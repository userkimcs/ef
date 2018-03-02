

using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Data.Context;
using System.Linq;
using HePa.Service.Services;
using System.Collections.Generic;
using System.Threading.Tasks;
using System;
namespace HePa.Service.Services
{
    public class CommentService : ICommentService
    {
        private readonly IRepository<WordComment> m_wordCommentRepository;
        private readonly IRepository<UserLikedWordComment> m_userLikeWordCommentRepository;
        private readonly IRepository<ClassComment> m_classCommentRepository;
        public CommentService(IRepository<WordComment> m_wordCommentRepository,
            IRepository<ClassComment> m_classCommentRepository, 
            IRepository<UserLikedWordComment> m_userLikeWordCommentRepository)
        {
            this.m_classCommentRepository = m_classCommentRepository;
            this.m_wordCommentRepository = m_wordCommentRepository;
            this.m_userLikeWordCommentRepository = m_userLikeWordCommentRepository;
        }

        public void PostClassComment(string classId, string accountId, string content)
        {
            ClassComment comment = EntityFactory.CreateClassComment(classId, accountId, content);
            m_classCommentRepository.Insert(comment);
            m_classCommentRepository.SaveChanges();
        }

        public System.Collections.Generic.List<ClassComment> GetClassComments(string classId)
        {
            return this.m_classCommentRepository.FindEntities(t => t.ClassId == classId).ToList();
        }

        public System.Collections.Generic.IList<WordComment> GetWordComments(string wordId)
        {
            return this.m_wordCommentRepository.FindEntities(t => t.WordId == wordId).OrderByDescending(t => t.CreatedDate).ToList();       
        }


        public System.Collections.Generic.IList<WordComment> 
            GetWordCommentsPaging(string wordId, int page, int pageSize, ref int numberOfPages)
        {
            List<WordComment> comments = this.m_wordCommentRepository.FindEntities(t => t.WordId == wordId, 
                page, pageSize, ref numberOfPages, 
                t => t.CreatedDate, false).ToList();
            return comments;
        }


        public async System.Threading.Tasks.Task PostClassCommentAsync(string classId, string accountId, string content)
        {
            await Task.Run(() => PostClassComment(classId, accountId, content));
        }
        public async System.Threading.Tasks.Task<List<ClassComment>> GetClassCommentsAsync(string classId)
        {
            return await Task.Run(() => GetClassComments(classId));
        }

        public async System.Threading.Tasks.Task<IList<WordComment>> GetWordCommentsAsync(string wordId)
        {
            return await Task.Run(() => GetWordComments(wordId));
        }


        IList<ClassComment> ICommentService.GetClassComments(string classId)
        {
            throw new NotImplementedException();
        }

        Task<IList<ClassComment>> ICommentService.GetClassCommentsAsync(string classId)
        {
            throw new NotImplementedException();
        }

        public IList<WordComment> GetWordComments(string wordId, string userId, 
            int page, int pageSize, string orderBy = "Date")
        {
            // Find all comment of current user

            // First, if order by date time 
            if (orderBy.Equals("Date") == true)
            {
                // get user comment first
                IQueryable<WordComment> userComments = this.m_wordCommentRepository
                                                        .FindEntities(t => t.UserId == userId // Select user
                                                                        && t.WordId == wordId // And comment in word
                                                                        && t.CommentParent == t.Id, // And parent comment
                                                                        page, pageSize, // Current page and number of items in page
                                                                        t => t.CreatedDate, false); // Order by date
                // get another comment
                IQueryable<WordComment> oderUserComments = this.m_wordCommentRepository
                                                        .FindEntities(t => t.UserId != userId // Select comment of not current user
                                                                        && t.WordId == wordId // Current word comment
                                                                        && t.CommentParent == t.Id, // And parent comment
                                                                        page, pageSize, // Current page and number of items in page
                                                                        t => t.CreatedDate, false); // Order by date
                // Append 2 lists
                IList<WordComment> results = userComments.Concat(oderUserComments).ToList();
                return results;
            }
            else
            {
                // get user comment first
                IQueryable<WordComment> userComments = this.m_wordCommentRepository
                                                        .FindEntities(t => t.UserId == userId // Select user
                                                                        && t.WordId == wordId // And comment in word
                                                                        && t.CommentParent == t.Id, // And parent comment
                                                                        page, pageSize, // Current page and number of items in page
                                                                        t => t.Votes, false); // Order by date
                // get another comment
                IQueryable<WordComment> oderUserComments = this.m_wordCommentRepository
                                                        .FindEntities(t => t.UserId != userId // Select comment of not current user
                                                                        && t.WordId == wordId // Current word comment
                                                                        && t.CommentParent == t.Id, // And parent comment
                                                                        page, pageSize, // Current page and number of items in page
                                                                        t => t.Votes, false); // Order by date
                // Append 2 lists
                IList<WordComment> results = userComments.Concat(oderUserComments).ToList();
                return results;
            }
        }

        public async Task<IList<WordComment>> GetWordCommentsAsync(string wordId, string userId, 
            int page, int pageSize, string orderBy = "Date")
        {
            return await Task.Run(() => GetWordComments(wordId, userId, page, pageSize, orderBy));
        }


        public IList<WordComment> GetWordReplyComments(string commentId, int page, int pageSize)
        {
            IQueryable<WordComment> comments = this.m_wordCommentRepository
                                                    .FindEntities(t => t.CommentParent == commentId,
                                                                    page, pageSize, t => t.CreatedDate, false);
            DateTime start = System.DateTime.Now;
            comments.ToList();
            System.Diagnostics.Debug.WriteLine(System.DateTime.Now - start);
            return comments.ToList();
        }

        public async Task<IList<WordComment>> GetWordReplyCommentsAsync(string commentId, int page, int pageSize)
        {
            IQueryable<WordComment> comments = await this.m_wordCommentRepository
                                                    .FindEntitiesAsync(t => t.CommentParent == commentId,
                                                                    page, pageSize, t => t.CreatedDate, false);
            return comments.ToList();
        }


        public WordComment PostWordComment(string userId, string wordId, string content)
        {
            // Create 
            WordComment comment = EntityFactory.CreateWordComment(userId, wordId, content);
            try
            {
                // Insert comment
                this.m_wordCommentRepository.Insert(comment);
                this.m_wordCommentRepository.SaveChanges();
                // Return successfull
                return comment;
            }
            catch
            {
                return null;
            }
            
        }

        public async Task<WordComment> PostWordCommentAsync(string userId, string wordId, string content)
        {
            // Create 
            WordComment comment = EntityFactory.CreateWordComment(userId, wordId, content);
            try
            {
                // Insert comment
                await this.m_wordCommentRepository.InsertAsync(comment);
                await this.m_wordCommentRepository.SaveChangesAsync();
                // Return successfull
                return comment;
            }
            catch 
            {
                // Add error
                return comment;
            }
        }


        public bool IsLikedComment(string userId, string commentId)
        {
            // Find if comment xyz has been liked by user abc
            return this.m_userLikeWordCommentRepository
                .Select(t => t.UserId == userId && t.CommentId == commentId).Any();
        }

        public async Task<bool> IsLikedCommentAsync(string userId, string commentId)
        {
            // Find if comment xyz has been liked by user abc
            var likedComment = await this.m_userLikeWordCommentRepository
                .SelectFirstAsync(t => t.UserId == userId && t.CommentId == commentId);
            // Checking 
            if (likedComment != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public ServiceResult LikeComment(string userId, string commentId)
        {
            try
            {
                // Create result user liked comment
                UserLikedWordComment result = EntityFactory.CreateUserLikeWordComment(userId, commentId);
                // Insert to database
                this.m_userLikeWordCommentRepository.Insert(result);
                WordComment comment = this.m_wordCommentRepository.FindEntity(t => t.Id == commentId);
                // Update number of votes
                comment.Votes = comment.Votes + 1;
                // update comment 
                this.m_wordCommentRepository.Update(comment);
                // return successfull
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
        }

        public async Task<ServiceResult> LikeCommentAsync(string userId, string commentId)
        {
            try
            {
                // Create result user liked comment
                UserLikedWordComment result = EntityFactory.CreateUserLikeWordComment(userId, commentId);
                // Insert to database
                await this.m_userLikeWordCommentRepository.InsertAsync(result);
                WordComment comment = await this.m_wordCommentRepository.FindEntityAsync(t => t.Id == commentId);
                // Update number of votes
                comment.Votes = comment.Votes + 1;
                // update comment 
                await this.m_wordCommentRepository.UpdateAsync(comment);
                // save changes 
                await m_userLikeWordCommentRepository.SaveChangesAsync();
                await m_wordCommentRepository.SaveChangesAsync();
                // return successfull
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
        }


        public ServiceResult UnlikeComment(string userId, string commentId)
        {
            try
            {
                // Delete from database
                this.m_userLikeWordCommentRepository.Delete(t => t.UserId == userId && t.CommentId == commentId);
                WordComment comment = this.m_wordCommentRepository.FindEntity(t => t.Id == commentId);
                // Update number of votes
                comment.Votes = comment.Votes - 1;
                // update comment 
                this.m_wordCommentRepository.Update(comment);
                // save changes 
                m_userLikeWordCommentRepository.SaveChanges();
                m_wordCommentRepository.SaveChanges();
                // return successfull
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
        }

        public async Task<ServiceResult> UnlikeCommentAsync(string userId, string commentId)
        {
            try
            {
                // Delete from database
                await this.m_userLikeWordCommentRepository.DeleteAsync(t => t.UserId == userId && t.CommentId == commentId);
                WordComment comment = this.m_wordCommentRepository.FindEntity(t => t.Id == commentId);
                // Update number of votes
                comment.Votes = comment.Votes - 1;
                // update comment 
                await this.m_wordCommentRepository.UpdateAsync(comment);
                // save changes 
                await m_userLikeWordCommentRepository.SaveChangesAsync();
                await m_wordCommentRepository.SaveChangesAsync();
                // return successfull
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
        }

        public string getUserIdByWordCommentId(string commentId)
        {
            return m_wordCommentRepository.FindEntity(x => x.Id == commentId).UserId;
        }


        public ServiceResult DeleteComment(string commentId)
        {
            try
            {
                // find comment by id
                var comment = this.m_wordCommentRepository.SelectFirst(t => t.Id == commentId);
                // delete object 
                this.m_wordCommentRepository.Delete(comment);
                return ServiceResult.Success;
            }
            catch (Exception ex) 
            {
                // exception
                return ServiceResult.AddError(ex.Message);
            }
        }

        public async Task<ServiceResult> DeleteCommentAsync(string commentId)
        {
            try
            {
                // find comment by id
                var comment = await this.m_wordCommentRepository.SelectFirstAsync(t => t.Id == commentId);
                // delete object 
                await this.m_wordCommentRepository.DeleteAsync(comment);
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                // exception
                return ServiceResult.AddError(ex.Message);
            }
        }
    }
}
