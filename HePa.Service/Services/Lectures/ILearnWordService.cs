using System.Collections.Generic;
using System.Linq;
using System;
using HePa.Core.Entities;
using System.Threading.Tasks;
using HePa.Core.Helpers;

namespace HePa.Service.Services.Lectures
{
    public interface ILearnWordService
    {
        /// <summary>
        /// Get all words user has learned in class 
        /// </summary>
        /// <param name="classId">class id</param>
        /// <param name="userId">user id</param>
        /// <returns></returns>
        IQueryable<Word> GetRemainWords(string classId, string userId);
        /// <summary>
        /// Get learned word async method
        /// </summary>
        /// <param name="classId"></param>
        /// <param name="userId"></param>
        /// <returns></returns>
        Task<IQueryable<Word>> GetRemainWordsAsync(string classId, string userId);
        /// <summary>
        /// Get all words in class
        /// </summary>
        /// <param name="classId">class Id</param>
        /// <returns>List of words</returns>
        IQueryable<Word> GetWords(string classId);
        /// <summary>
        /// Get all words in class async method
        /// </summary>
        /// <param name="classId">class id</param>
        /// <returns>List of words</returns>
        Task<IQueryable<Word>> GetWordsAsync(string classId);
        /// <summary>
        /// Get class
        /// </summary>
        /// <param name="id">class id</param>
        /// <returns></returns>
        Class GetClass(string id);
        /// <summary>
        /// Get class async method
        /// </summary>
        /// <param name="id">class id</param>
        /// <returns></returns>
        Task<Class> GetClassAsync(string id);
        /// <summary>
        /// Get List words to learn today
        /// List words based on rules in SRS doc
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">Class id</param>
        /// <returns></returns>
        Task<IList<TodayWord>> GetListWordsTodayAsync(string userId, string classId);
        /// <summary>
        /// Get word by word id
        /// </summary>
        /// <param name="wordId"></param>
        /// <returns>Word</returns>
        Task<Word> GetWordByIdAsync(string wordId);

        
        /// <summary>
        /// Get today word user will lean
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns>list of word</returns>
        IList<TodayWord> GetTodayWords(string userId, string classId);
        Task<IList<TodayWord>> GetTodayWordsAsync(string userId, string classId);

        /// <summary>
        /// Save learn word resutl to Db 
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <param name="wordId">word id</param>
        /// <param name="archivedScore">score user get from word</param>
        /// <param name="isPassed">is passed, calculating from client</param>
        /// <returns></returns>
        ServiceResult SaveLearnWordResult(string userId, string classId,
            string wordId, int archivedScore, bool isPassed);
        Task<ServiceResult> SaveLearnWordResultAsync(string userId, string classId, 
            string wordId, int archivedScore, bool isPassed);

        /// <summary>
        /// Save today word result
        /// </summary>
        /// <param name="todayWord">today word</param>
        /// <param name="archivedScore">archived soscored</param>
        /// <param name="isPassed">is passed</param>
        /// <returns></returns>
        ServiceResult SaveLearnWordResult(TodayWord todayWord, int archivedScore);
        Task<ServiceResult> SaveLearnWordResultAsync(TodayWord todayWord, int archivedScore);

        /// <summary>
        /// Get word to learn from list today words 
        /// Active when user submit results of current word
        /// </summary>
        /// <param name="todayWords">list of words user has to learn today</param>
        /// <returns>Word</returns>
        TodayWord GetWordToLearn(IList<TodayWord> todayWords);
        Task<TodayWord> GetWordToLearnAsync(IList<TodayWord> todayWords);

        /// <summary>
        /// Get todayword by id
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <param name="wordId">word id</param>
        /// <returns>todayword</returns>
        TodayWord GetTodayWord(string userId, string classId, string wordId);
        Task<TodayWord> GetTodayWordAsync(string userId, string classId, string wordId);

        Task<double> GetLearnWordResult(string userId, string wordId, string classId);

        /// <summary>
        /// Get number of passed words
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="classID"></param>
        /// <returns></returns>
        int GetUserPassedWordAmountCount(string userID, string classID);


        /// <summary>
        /// Check if user join class or not
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns>true or false</returns>
        bool IsUserJoinClass(string userId, string classId);
        Task<bool> IsUserJoinClassAsync(string userId, string classId);

        /// <summary>
        /// Check if user is allow to view word or has to learn 5 steps
        /// </summary>
        /// <param name="todayWords">list of word today</param>
        /// <param name="todayWords">word Id</param>
        /// <returns></returns>
        bool IsAllowToView(IList<TodayWord> todayWords, string wordId);
        Task<bool> IsAllowToViewAsync(IList<TodayWord> todayWords, string wordId);

        /// <summary>
        /// Check if user has learn this word before 
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="wordId">word id</param>
        /// <returns></returns>
        bool IsUserLearnWordBefore(string userId, string wordId);
        Task<bool> IsUserLearnWordBeforeAsync(string userId, string wordId);

        /// <summary>
        /// Get number of passed words today
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns>number of passed words</returns>
        int NumberOfPassedWordsToday(string userId, string classId);
        Task<int> NumberOfPassedWordsTodayAsync(string userId, string classId);

        /// <summary>
        /// get number of today words
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns></returns>
        int NumberOfTodayWords(string userId, string classId);
        Task<int> NumberOfTodayWordsAsync(string userId, string classId);

        /// <summary>
        /// number of passed words today
        /// </summary>
        /// <param name="todayWords">list of todaywords</param>
        /// <returns></returns>
        int NumberOfPassedWordsToday(IList<TodayWord> todayWords);
        Task<int> NumberOfPassedWordsTodayAsync(IList<TodayWord> todayWords);

        /// <summary>
        /// number of todaywords
        /// </summary>
        /// <param name="todayWords">list of todaywords</param>
        /// <returns></returns>
        int NumberOfTodayWords(IList<TodayWord> todayWords);
        Task<int> NumberOfTodayWordsAsync(IList<TodayWord> todayWords);
    }
}
