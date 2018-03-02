using HePa.Core.Entities;
using HePa.Core.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.ExperienceServices
{
    public interface IExperienceService
    {
         /* 
          * Update new version 
        
          * Kim T. Nguyen
         
          * kim.nguyen@hepatown.com
       
        */
        /// <summary>
        /// Add 100 exp for registered first time 
        /// </summary>
        /// <param name="userId">user id</param>
        /// <returns></returns>
        ServiceResult AddExpForRegister(string userId);
        Task<ServiceResult> AddExpForRegisterAsync(string userId);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="wordId"></param>
        /// <param name="score"></param>
        /// <returns></returns>
        ServiceResult AddExpForLearnWord(string userId, string wordId, int score, string url = "");
        Task<ServiceResult> AddExpForLearnWordAsync(string userId, string wordId, int score, string url = "");

        /// <summary>
        /// Add exp if user comple all todaywords 
        /// Just complete Async method
        /// </summary>
        /// <param name="todayWords">list of todaywords</param>
        /// <returns></returns>
        ServiceResult AddExpForContinuousLearning(string userId, IList<TodayWord> todayWords);
        Task<ServiceResult> AddExpForContinuousLearningAsync(string userId, IList<TodayWord> todayWords);


        /// <summary>
        /// Get list of actions user get exp and total exp 
        /// </summary>
        /// <param name="userId">user id</param>
        /// <returns></returns>
        IList<UserExperience> GetExperienceHistory(string userId, int page, int pageSize);
        Task<IList<UserExperience>> GetExperienceHistoryAsync(string userId, int page, int paheSize);
    }
}
