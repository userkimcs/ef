

using HePa.Core.Entities;
using HePa.Core.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
namespace HePa.Service.Services
{
    public interface IClassService
    {
        IList<Class> GetClasses();
        IList<Class> GetClasses(string className);
        IList<Class> GetClassesByAuthor(string author);
        Class GetClass(string id);
        // Create new class 
        void CreateNewClass(Class c);
        // void AddWord(string classId, Word word);
        void UpdateClass(Class newClass);
        void DeleteClass(Class c);
        IQueryable<Word> GetWords(string classId);
        Word GetWord(string classId, string userId);
        string GetCurrentClassName(string classId);
        /// <summary>
        /// Check if user registered the class 
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns>true if user registered the class id = classId, false if user has not registered before</returns>
        bool IsUserRegisteredClass(string userId, string classId);

        // Async methods 
        // 
        Task<IList<Class>> GetClassesAsync();
        Task<IList<Class>> GetClassesAsync(string className);
        Task<IList<Class>> GetClassesByAuthorAsync(string author);
        Task<Class> GetClassAsync(string id);
        // Create new class 
        Task CreateNewClassAsync(Class c);
        // void AddWord(string classId, Word word);
        Task UpdateClassAsync(Class newClass);
        Task DeleteClassAsync(Class c);
        Task<IQueryable<Word>> GetWordsAsync(string classId);
        Task<Word> GetWordAsync(string classId, string userId);
        Task<string> GetCurrentClassNameAsync(string classId);
        /// <summary>
        /// Register to a class 
        /// If the first class registered, use must join a course 
        /// User joins to a course automatically
        /// </summary>
        /// <param name="userId">current userId</param>
        /// <param name="classId">class id</param>
        /// <returns>true if success, false if not or user has been registered the class before</returns>
        Task<ServiceResult> RegisterToClassAsync(string userId, string courseId,
           string classId, double numberOfWeeks);
        /// <summary>
        /// Check if user has been registered to a class or not
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns>true if user registered, false if not</returns>
        Task<bool> IsUserRegisteredClassAsync(string userId, string classId);
        /// <summary>
        /// 
        /// </summary>
        /// <param name="classId"></param>
        /// <param name="userId"></param>
        /// <returns></returns>
        Task<ServiceResult> LeaveClassAsync(string userId, string classId);
        /// <summary>
        /// Change goal ò the class 
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <param name="numberOfWeeks">new goal</param>
        /// <returns>return true if success, false if not</returns>
        Task<ServiceResult> ChangeGoalAsync(string userId, string classId, double numberOfWeeks);
        /// <summary>
        /// Resume current class 
        /// Get all word or phrase of todays 
        /// After resume, go to page of word or phrase 
        /// </summary>
        /// <param name="userId">id of user</param>
        /// <param name="classId">class id</param>
        /// <returns>true if successfull, false if not</returns>
        Task<bool> ResumeClassAsync(string userId, string classId);
        /// <summary>
        /// User like a class
        /// </summary>
        /// <param name="userId">Id of use</param>
        /// <param name="classId">Id of class</param>
        /// <returns>true if successfull, false if not</returns>
        Task<ServiceResult> LikeClassAsync(string userId, string classId);
        /// <summary>
        /// user dislike a class
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns>true if success, false if not</returns>
        Task<ServiceResult> DislikeClassAsync(string userId, string classId);
        /// get user join class with his goal
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns>service result success or error</returns>
        Task<UserGoal> GetUserJoinClass(string userId, string classId);
        /// <summary>
        /// get all registerd class of user
        /// </summary>
        /// <param name="userId">user id</param>
        /// <returns></returns>
        Task<IList<Class>> GetRegisteredClassesAsync(string userId);
        /// <summary>
        /// Get list words user has to learn today
        /// List word base on user goal
        /// Rule: SRS Document
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns>List of words</returns>
        /// 

         /// <summary>
        /// Get user goal
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns>List of usergoal</returns>
        Task<IList<UserGoal>> GetUserRegistedClassedGoalAsync(string userId);

        /// <summary>
        /// Get all classes of course 
        /// </summary>
        /// <param name="courseId">course id</param>
        /// <returns></returns>
        IList<Class> GetAllClassOfCourse(string courseId);
        Task<IList<Class>> GetAllClassOfCourseAsync(string courseId);
    }
}
