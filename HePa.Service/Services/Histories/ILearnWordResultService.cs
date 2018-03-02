using HePa.Core.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;
namespace HePa.Service.Services.Histories
{
    public interface ILearnWordResultService
    {
        /// <summary>
        /// get all word user archived in class 
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <param name="page">current page</param>
        /// <param name="numberOfItemsPerPage">number of item in page</param>
        /// <param name="numberOfPages">number of page pass by reference</param>
        /// <returns>List of words</returns>
        IList<LearnWordResult> GetArchivedWordsInClass(string userId, string classId,
            int page, int pageSize, string orderBy = "Date");
        Task<IList<LearnWordResult>> GetArchivedWordsInClassAsync(string userId,
            string classId, int page, int pageSize, string orderBy = "Date");

        /// <summary>
        /// Get all word that user not success in learning
        /// </summary>
        /// <param name="classId">class id</param>
        /// <returns>List of words</returns>
        IList<LearnWordResult> GetFailureWordsInClass(string userId, string classId,
            int page, int pageSize, string orderBy = "Date");
        Task<IList<LearnWordResult>> GetFailureWordsInClassAsync(string userId, string classId,
            int page, int pageSize, string orderBy = "Date");

        /// <summary>
        /// Get all words user learned in the past 
        /// Results must be order by date
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <param name="page">current page</param>
        /// <param name="pageSize">number of item in page</param>
        /// <returns>list of learning history words</returns>
        Task<IList<LearnWordHistory>> GetLearningWordHistoryAsync(string userId, string classId,
            int page, int pageSize);
       
        /// <summary>
        /// Get all word results
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="classId"></param>
        /// <returns>list of word results</returns>
        Task<IList<LearnWordResult>> GetWordResultsAsync(string userId, string classId, int page, int pageSize);

        /// <summary>
        /// Get word result
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="wordId"></param>
        /// <returns></returns>
        Task<LearnWordResult> GetWordResultAsync(string userId, string wordId);
    }
}
