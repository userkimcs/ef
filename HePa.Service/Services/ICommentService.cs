using HePa.Core.Entities;
using HePa.Core.Helpers;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
namespace HePa.Service.Services
{
    public interface ICommentService
    {
        /// <summary>
        /// Post comment to a ckass 
        /// </summary>
        /// <param name="classId">current class</param>
        /// <param name="accountId">current account</param>
        /// <param name="content">content of the comment</param>
        void PostClassComment(string classId, string accountId, string content);

        IList<ClassComment> GetClassComments(string classId);
        IList<WordComment> GetWordComments(string wordId);
        // Async method 
        // 
        Task PostClassCommentAsync(string classId, string accountId, string content);
        Task<IList<ClassComment>> GetClassCommentsAsync(string classId);
        Task<IList<WordComment>> GetWordCommentsAsync(string wordId);

        // Get word comment 
        /// <summary>
        /// Get all comments in word details page
        /// All comment of user is first
        /// </summary>
        /// <param name="wordId">word id</param>
        /// <param name="userId">user id</param>
        /// <param name="page">current page default by 1</param>
        /// <param name="pageSize">number of items per page</param>
        /// <param name="orderBy">order by "Like" or "Date". Default is "Date"</param>
        /// <returns>List of comments</returns>
        IList<WordComment> GetWordComments(string wordId, string userId, 
            int page, int pageSize, string orderBy = "Date");
        Task<IList<WordComment>> GetWordCommentsAsync(string wordId, string userId,
            int page, int pageSize, string orderBy = "Date");

        /// <summary>
        /// Get all replies of the comment
        /// </summary>
        /// <param name="commentId">comment parent id</param>
        /// <param name="page">page number</param>
        /// <param name="pageSize">number of comments per page</param>
        /// <returns>List of word comments</returns>
        IList<WordComment> GetWordReplyComments(string commentId, int page, int pageSize);
        Task<IList<WordComment>> GetWordReplyCommentsAsync(string commentId, int page, int pageSize);

        /// <summary>
        /// Post comment to a word 
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="wordId">word id</param>
        /// <param name="comment">contents of the comment</param>
        /// <returns>result</returns>
        WordComment PostWordComment(string userId, string wordId, string content);
        Task<WordComment> PostWordCommentAsync(string userId, string wordId, string content);

        /// <summary>
        /// Check if user abc likes comment xyz
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="commentId">comment id</param>
        /// <returns>true or false</returns>
        bool IsLikedComment(string userId, string commentId);
        Task<bool> IsLikedCommentAsync(string userId, string commentId);

        /// <summary>
        /// user abc likes comment xyz
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="commentId">comment id</param>
        /// <returns>service result</returns>
        ServiceResult LikeComment(string userId, string commentId);
        Task<ServiceResult> LikeCommentAsync(string userId, string commentId);

        /// <summary>
        /// user abc unlikes comment xyz
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="commentId">comment id</param>
        /// <returns>service result</returns>
        ServiceResult UnlikeComment(string userId, string commentId);
        Task<ServiceResult> UnlikeCommentAsync(string userId, string commentId);

        string getUserIdByWordCommentId(string commentId);

        /// <summary>
        /// Delete comment 
        /// Also delete likes comment of user
        /// </summary>
        /// <param name="commentId"></param>
        /// <returns></returns>
        ServiceResult DeleteComment(string commentId);
        Task<ServiceResult> DeleteCommentAsync(string commentId); 
    }
}
