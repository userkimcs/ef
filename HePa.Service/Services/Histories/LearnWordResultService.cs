using System.Collections.Generic;
using System.Linq;
using System;
using HePa.Core.Entities;
using System.Threading.Tasks;
using HePa.Data.Context;
using System.Data.Objects;

namespace HePa.Service.Services.Histories
{
    public class LearnWordResultService : ILearnWordResultService
    {
        private readonly IRepository<LearnWordResult> m_learnWordResultRepository;
        private readonly IRepository<LearnWordHistory> m_learnWordHistoryRepository;
        public LearnWordResultService(IRepository<LearnWordResult> m_learnWordResultRepository,
            IRepository<LearnWordHistory> m_learnWordHistoryRepository)
        {
            this.m_learnWordResultRepository = m_learnWordResultRepository;
            this.m_learnWordHistoryRepository = m_learnWordHistoryRepository;
        }
        #region archived words
        public IList<LearnWordResult> GetArchivedWordsInClass(string userId, string classId,
            int page, int pageSize, string orderBy = "Date")
        {
            if (orderBy != "Date")
            {
                DateTime start = DateTime.Now;
                // get leared history in class
                IQueryable<LearnWordResult> queryLearnedHistoryInClass = this.m_learnWordResultRepository
                                                                                .FindEntities(t => t.ClassId == classId //Compare class id
                                                                                    && t.UserId == userId // compare user id
                                                                                    && t.IsSuccessed == true, // if success
                                                                                    page, // page number
                                                                                    pageSize, // number of item per page
                                                                                    t => t.LastUpdated, // order by last updated
                                                                                    false); // order by des
                queryLearnedHistoryInClass.ToList();
                System.Diagnostics.Debug.WriteLine("Run time: " + (DateTime.Now - start));
                // return list of learned history
                return queryLearnedHistoryInClass.ToList();
            }
            else
            {
                DateTime start = DateTime.Now;
                // get leared history in class
                IQueryable<LearnWordResult> queryLearnedHistoryInClass = this.m_learnWordResultRepository
                                                                                .FindEntities(t => t.ClassId == classId //Compare class id
                                                                                    && t.UserId == userId // compare user id
                                                                                    && t.IsSuccessed == true, // if success
                                                                                    page, // page number
                                                                                    pageSize, // number of item per page
                                                                                    t => t.LastUpdated, // order by last updated
                                                                                    false); // order by des
                queryLearnedHistoryInClass.ToList();
                System.Diagnostics.Debug.WriteLine("Run time: " + (DateTime.Now - start));
                // return list of learned history
                return queryLearnedHistoryInClass.ToList();
            }
        }

        // Implicit method 
        public async Task<IList<LearnWordResult>> GetArchivedWordsInClassAsync(string userId, string classId,
            int page, int pageSize, string orderBy = "Date")
        {
            return await Task.Run(() => this.GetArchivedWordsInClass(userId, classId, page, pageSize));
        }
        #endregion

        #region failure words
        public async Task<IList<LearnWordResult>> GetFailureWordsInClassAsync(string userId, string classId,
                                                       int page, int pageSize, string orderBy = "Date")
        {
            return await Task.Run(() => this.GetFailureWordsInClass(userId, classId, page, pageSize));
        }



        public IList<LearnWordResult> GetFailureWordsInClass(string userId, string classId,
                                                       int page, int pageSize, string orderBy = "Date")
        {
            if (orderBy != "Date")
            {
                // get leared history in class
                IQueryable<LearnWordResult> queryLearnedHistoryInClass = this.m_learnWordResultRepository
                                                                                .FindEntities(t => t.ClassId == classId //Compare class id
                                                                                    && t.UserId == userId // compare user id
                                                                                    && t.IsSuccessed == false, // if success
                                                                                    page, // page number
                                                                                    pageSize, // number of item per page
                                                                                    t => t.LastUpdated, // order by last updated
                                                                                    false); // order by des
                // return list of learned history
                return queryLearnedHistoryInClass.ToList();
            }
            else
            {
                // get leared history in class
                IQueryable<LearnWordResult> queryLearnedHistoryInClass = this.m_learnWordResultRepository
                                                                                .FindEntities(t => t.ClassId == classId //Compare class id
                                                                                    && t.UserId == userId // compare user id
                                                                                    && t.IsSuccessed == false, // if success
                                                                                    page, // page number
                                                                                    pageSize, // number of item per page
                                                                                    t => t.LastUpdated, // order by last updated
                                                                                    false); // order by des
                // return list of learned history
                return queryLearnedHistoryInClass.ToList();
            }
        }

        public async Task<IList<LearnWordResult>> GetWordResultsAsync(string userId, string classId, int page, int pageSize)
        {
            var listOfResult = await this.m_learnWordResultRepository.FindEntitiesAsync(t => t.ClassId == classId  && t.UserId == userId);
            return listOfResult.ToList();
        }
        #endregion

        #region learning history
        public async Task<IList<LearnWordHistory>> GetLearningWordHistoryAsync(string userId, string classId,
            int page, int pageSize)
        {
            // get all history in class 
            IQueryable<LearnWordHistory> histories = await this.m_learnWordHistoryRepository
                .FindEntitiesAsync(t => t.UserId == userId && t.ClassId == classId,
                page, pageSize, t => t.LearningDate, false);
            // return list
            return histories.ToList();
        }
        #endregion

        public async Task<LearnWordResult> GetWordResultAsync(string userId, string wordId)
        {
            var result = await m_learnWordResultRepository.FindEntityAsync(x => x.WordId == wordId && x.UserId == userId);
            if (result != null)
            {
                return result;
            }
            else
            {
                return null;
            }
            
        }
    }
}
