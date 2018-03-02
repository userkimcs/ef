using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HePa.Core.Entities;
using HePa.Data.Context;
using HePa.Core.Helpers;
using System;
using System.Data.Entity;
using System.Linq.Expressions;

namespace HePa.Service.Services
{
    public class CourseService : ICourseService
    {
        private readonly IRepository<Course> m_courseRepository;
        private readonly IRepository<UserGoal> m_goalRepository;
        private readonly IRepository<Class> m_classRepository;
        public CourseService(IRepository<Course> m_courseRepository, IRepository<UserGoal> m_goalRepository,
            IRepository<Class> m_classRepository)
        {
            this.m_courseRepository = m_courseRepository;
            this.m_goalRepository = m_goalRepository;
            this.m_classRepository = m_classRepository;
        }
        public async Task<ServiceResult> CreateCourseAsync(Course course, string userId)
        {
            try
            {
                course.CreatedUserId = userId;
                await m_courseRepository.InsertAsync(course);
                await this.m_courseRepository.SaveChangesAsync();
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
        }

        public async Task<IList<Course>> GetCoursesCreatedByUserIdAsync(string userId)
        {
            try
            {
                IQueryable<Course> courses = await m_courseRepository.FindEntitiesAsync(t => t.CreatedUserId == userId);
                return courses.ToList();
            }
            catch
            {
                return null;
            }
        }

        public async Task<Course> GetCourseByIdAsync(string courseId)
        {
            try
            {
                var courses = await m_courseRepository.SelectAsync(t => t.Id == courseId);
                // Course course = await this.m_courseRepository.FindEntityAsync(t => t.Id == courseId);
                return courses.FirstOrDefault();
            }
            catch
            {
                return null;
            }
        }

        private IList<Class> GetClassesInCourse(string courseId)
        {
            try
            {
                IQueryable<Class> classes = m_classRepository
                                                .FindEntities(t => t.CourseId == courseId);
                return classes.ToList();
            }
            catch
            {
                return null;
            }
        }

        public async Task<IList<Class>> GetClassesInCourseAsync(string courseId)
        {
            return await Task.Run(() => GetClassesInCourse(courseId));
        }

        private IList<Course> GetRegisteredCourseOfUserId(string userId)
        {
            return m_courseRepository.Find().Where(u => u.RegisteredUsers.Any(e => e.Id == userId)).ToList();
        }
        // Update 22/06/2015 
        // Adding 2 methods 
        public async Task<IList<Course>> GetRegisteredCourseOfUserIdAsync(string userId)
        {
            return await Task.Run(() => GetRegisteredCourseOfUserId(userId));
        }

        public async Task<IList<Course>> GetRecommendedCoursesOfUserIdAsync(string userId)
        {
            // get all courses create by Admin (Hepa courses)
            return await Task.Run(() => m_courseRepository
                                        .FindEntities(t => t.CreatedUserId == Constraint.HEPA_ADMIN_ID).ToList());
        }

        private IList<Class> GetOtherClassesInCourse(string courseId, string classId)
        {
            IQueryable<Class> classes = m_classRepository
                                                .FindEntities(t => t.CourseId == courseId)
                                                .SkipWhile(t => t.Id == classId);
            return classes.ToList();
        }

        public async Task<IList<Class>> GetOtherClassesInCourseAsync(string courseId, string classId)
        {
            return await Task.Run(() => this.GetOtherClassesInCourse(courseId, classId));
        }


        public async Task<IList<Course>> GetAllCoursesAsync()
        {
            IQueryable<Course> courses = await this.m_courseRepository.FindAsync();
            return await courses.ToListAsync();
        }


        public async Task<ServiceResult> UpdateCourseAsync(Course course)
        {
            try
            {
                // Update course
                await this.m_courseRepository.UpdateAsync(course);
                // Save changes
                await this.m_courseRepository.SaveChangesAsync();
                // Return successfull
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                // Return failure with error
                return ServiceResult.AddError(ex.Message);
            }
        }

        public async Task<ServiceResult> CreateClassAsync(Class c)
        {
            try
            {
                await this.m_classRepository.InsertAsync(c);
                await this.m_classRepository.SaveChangesAsync();
                return ServiceResult.Success;
            }
            catch (Exception e)
            {
                return ServiceResult.AddError(e.Message);
            }
        }
    }
}
