using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using HePa.Core.Entities;

using HePa.Core.Helpers;

namespace HePa.Service.Services
{
    public interface ICourseService
    {

        /// <summary>
        /// Create new course
        /// </summary>
        /// <param name="course">course creates</param>
        /// <returns>true if create successfull, false if not</returns>
        Task<ServiceResult> CreateCourseAsync(Course course, string userId);
        /// <summary>
        /// get all course of user
        /// </summary>
        /// <param name="userId">user id</param>
        /// <returns>List of courses created by user </returns>
        Task<IList<Course>> GetCoursesCreatedByUserIdAsync(string userId);
        /// <summary>
        /// Get course by its id 
        /// </summary>
        /// <param name="courseId">course id</param>
        /// <returns>A Course with matched id</returns>
        Task<Course> GetCourseByIdAsync(string courseId);
        /// <summary>
        /// get all classes in exist course
        /// </summary>
        /// <param name="courseId">course id</param>
        /// <returns>list of classes</returns>
        Task<IList<Class>> GetClassesInCourseAsync(string courseId);
        /// <summary>
        /// Get all courses user registered 
        /// </summary>
        /// <param name="userId">id of current user</param>
        /// <returns>list of courses</returns>
        Task<IList<Course>> GetRegisteredCourseOfUserIdAsync(string userId);
        /// <summary>
        /// Get all course recommend by system 
        /// Not implement
        /// Default is course create by Hepa admin
        /// </summary>
        /// <param name="userId">current user id</param>
        /// <returns>list of course</returns>
        Task<IList<Course>> GetRecommendedCoursesOfUserIdAsync(string userId);
        /// <summary>
        /// 
        /// </summary>
        /// <param name="courseId"></param>
        /// <param name="classId"></param>
        /// <returns></returns>
        Task<IList<Class>> GetOtherClassesInCourseAsync(string courseId, string classId);
        /// <summary>
        /// Get all courses in database
        /// </summary>
        /// <returns>List of course</returns>
        Task<IList<Course>> GetAllCoursesAsync();
        /// <summary>
        /// Update course
        /// </summary>
        /// <param name="course">course object</param>
        /// <returns>Service result.success or error</returns>
        Task<ServiceResult> UpdateCourseAsync(Course course);

        /// <summary>
        /// Insert class to database 
        /// </summary>
        /// <param name="c">class</param>
        /// <returns></returns>
        Task<ServiceResult> CreateClassAsync(Class c);
    }
}
