
using HePa.Data.Context;
using HePa.Service.Services;
using HePa.Core.Entities;
using System.Linq;
using System;
using System.Collections.Generic;
using HePa.Core.Helpers;
using System.Threading.Tasks;
using System.Data.Entity; 

namespace HePa.Service.Services
{
    public class ClassService : IClassService
    {
        private readonly IRepository<Class> m_classRepository;
        private readonly IRepository<UserGoal> m_goalRepository;
        private readonly IRepository<Word> m_wordRepository;
        public ClassService(IRepository<Class> m_classRepository,
            IRepository<UserGoal> m_goalRepository, IRepository<Word> m_wordRepository)
        {
            this.m_classRepository = m_classRepository;
            this.m_goalRepository = m_goalRepository;
            this.m_wordRepository = m_wordRepository;
        }
        #region Get class(es)
        // Get all classes
        public System.Collections.Generic.IList<Class> GetClasses()
        {
            return m_classRepository.Find().ToList();
        }

        public System.Collections.Generic.IList<Class> GetClasses(string className)
        {
            return m_classRepository.FindEntities(m => m.ClassName == className).ToList();
        }

        public System.Collections.Generic.IList<Class> GetClassesByAuthor(string author)
        {
            return m_classRepository.Find().ToList();
        }

        public Class GetClass(string id)
        {
            var classs = m_classRepository.FindEntity(t => t.Id == id);
            return classs;
        }
        #endregion 
        public void CreateNewClass(Class c)
        {
            m_classRepository.Insert(c);
            // save changes
            m_classRepository.SaveChanges();
        }
        public void DeleteClass(Class c)
        {
            m_classRepository.Delete(c);
            // save changes
            m_classRepository.SaveChanges();
        }
        public IQueryable<Word> GetWords(string classId)
        {
            IQueryable<Word> words = m_wordRepository.FindEntities(t => t.ClassBelongId == classId);
            return words;
        }
        public string GetCurrentClassName(string classId)
        {
            // Get current class 
            Class c = m_classRepository.FindEntity(t => t.Id == classId);
            // return string for url 
            // class name: My Example 
            // Class id: 1 
            // Return url: My-Emxample-1
            return c.ClassName.Replace(' ', '-');
        }
        public Word GetWord(string classId, string userId)
        {
            return this.GetWords(classId).First();
        }
        public async System.Threading.Tasks.Task<IList<Class>> GetClassesAsync()
        {
            return await Task.Run(() => GetClasses());
        }
        public async System.Threading.Tasks.Task<IList<Class>> GetClassesAsync(string className)
        {
            return await Task.Run(() => GetClasses(className));
        }
        public async System.Threading.Tasks.Task<IList<Class>> GetClassesByAuthorAsync(string author)
        {
            return await Task.Run(() => GetClassesByAuthor(author));
        }
        public async System.Threading.Tasks.Task<Class> GetClassAsync(string id)
        {
            return await Task.Run(() => GetClass(id));
        }
        public async System.Threading.Tasks.Task CreateNewClassAsync(Class c)
        {
            await Task.Run(() => CreateNewClass(c));
        }
        public async System.Threading.Tasks.Task DeleteClassAsync(Class c)
        {
            await Task.Run(() => DeleteClass(c));
        }
        public async System.Threading.Tasks.Task<IQueryable<Word>> GetWordsAsync(string classId)
        {
            return await Task.Run(() => GetWords(classId));
        }
        public async System.Threading.Tasks.Task<Word> GetWordAsync(string classId, string userId)
        {
            return await Task.Run(() => GetWord(classId, userId));
        }
        public async System.Threading.Tasks.Task<string> GetCurrentClassNameAsync(string classId)
        {
            return await Task.Run(() => GetCurrentClassName(classId));
        }
        public bool IsUserRegisteredClass(string userId, string classId)
        {
            // check if user join class 
            var result = m_goalRepository.Select(t => t.UserId == userId && t.ClassId == classId).FirstOrDefault();
            // if join, result != null
            // return true if result != null
            return result != null ? true : false;
        }
        public async Task<bool> IsUserRegisteredClassAsync(string userId, string classId)
        {
            return await Task.Run(() => IsUserRegisteredClass(userId, classId));
        }
        // update 25/06/2015
        public async Task<ServiceResult> RegisterToClassAsync(string userId, string courseId,
                                                    string classId, double numberOfDays)
        {
            // If not regitesered
            try
            {
                // Create goal of the class for account 
                UserGoal goal = new UserGoal
                {
                    CourseId = courseId, // id of course
                    ClassId = classId, // class id
                    UserId = userId, //user id
                    NumberOfDays = numberOfDays,
                    CreatedDate = System.DateTime.Now,
                };
                // Update goal
                await this.m_goalRepository.InsertAsync(goal);
                await this.m_goalRepository.SaveChangesAsync();
                // Create lis of register course 

                // Return result
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                // Exception return false
                return ServiceResult.AddError(ex.Message);
            }
        }
        public async Task<ServiceResult> LeaveClassAsync(string userId, string classId)
        {
            try
            {
                // Get item
                var item = await m_goalRepository
                    .FindEntityAsync(t => t.ClassId == classId && t.UserId == userId);
                if (item == null)
                {
                    return ServiceResult.AddError("Đã có lỗi xảy ra.");
                }
                else
                {
                    // Delete item
                    await m_goalRepository.DeleteAsync(item);
                    // save changes 
                    await m_goalRepository.SaveChangesAsync();
                    // Return successfull
                    return ServiceResult.Success;
                }
            }
            catch (Exception ex)
            {
                // return failure
                return ServiceResult.AddError(ex.Message);
            }

        }
        public async Task<ServiceResult> ChangeGoalAsync(string userId, string classId, double numberOfDays)
        {
            try
            {
                // Get current goal
                var goal = await  m_goalRepository
                    .FindEntityAsync(t => t.ClassId == classId && t.UserId == userId);
                // Uodate new goal
                goal.NumberOfDays = numberOfDays;
                // Update lasted change
                goal.LastChanged = System.DateTime.Now;
                // Update entity 
                await m_goalRepository.UpdateAsync(goal);
                await m_goalRepository.SaveChangesAsync();
                // return true if successfull
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
        }
        public Task<bool> ResumeClassAsync(string userId, string classId)
        {
            throw new NotImplementedException();
        }
        public async Task<ServiceResult> DislikeClassAsync(string userId, string classId)
        {
            try
            {
                // Get current class 
                Class cls = m_classRepository.FindEntity(t => t.Id == classId);
                if (cls == null)
                {
                    return ServiceResult.AddError("Không tìm thấy lớp");
                }
                else
                {
                    // get current user
                    ApplicationUser user = cls.LikedUsers.FirstOrDefault(t => t.Id == userId);
                    if (user == null)
                    {
                        return ServiceResult.AddError("Lỗi xảy ra");
                    }
                    else 
                    { 
                        await Task.Run(() => cls.LikedUsers.Remove(user));
                        // Update number of  like
                        cls.TotalLikes = cls.TotalLikes - 1;
                        await this.m_classRepository.UpdateAsync(cls);
                        return ServiceResult.Success;
                    }
                }
                // Remove 
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
        }
        public void UpdateClass(Class newClass)
        {
            this.UpdateClass(newClass);
        }
        public async Task UpdateClassAsync(Class newClass)
        {
            await Task.Run(() => UpdateClass(newClass));
        }
        public async Task<ServiceResult> LikeClassAsync(string userId, string classId)
        {
            try
            {
                // Get current class 
                Class cls = m_classRepository.FindEntity(t => t.Id == classId);
                if (cls == null)
                {
                    return ServiceResult.AddError("Không tìm thấy lớp");
                }
                else
                {
                    // get current user
                    ApplicationUser user = cls.LikedUsers.FirstOrDefault(t => t.Id == userId);
                    if (user == null)
                    {
                        return ServiceResult.AddError("Lỗi xảy ra");
                    }
                    else
                    {
                        await Task.Run(() => cls.LikedUsers.Add(user));
                        // Update number of  like
                        cls.TotalLikes = cls.TotalLikes + 1;
                        await this.m_classRepository.UpdateAsync(cls);
                        return ServiceResult.Success;
                    }
                }
                // Remove 
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
        }
        public async Task<UserGoal> GetUserJoinClass(string userId, string classId)
        {
            // Find entity
            var userJoinClassGoal = await m_goalRepository
                .FindEntityAsync(t => t.UserId == userId && t.ClassId == classId);
            // Check if null
            if (userJoinClassGoal == null)
            {
                return null;
            }
            else
            {
                return userJoinClassGoal;
            }
        }
        private IList<Class> GetRegisteredClasses(string userId)
        {
            var registerdClassIds = this.m_goalRepository
                .FindEntities(t => t.UserId == userId)
                .Select(r => r.ClassId);
            var results = this.m_classRepository.Find().Where(t => registerdClassIds.Contains(t.Id)).ToList();
            return results;
        }
        public async Task<IList<Class>> GetRegisteredClassesAsync(string userId)
        {
            return await Task.Run(() => this.GetRegisteredClasses(userId));
        }

        public async Task<IList<UserGoal>> GetUserRegistedClassedGoalAsync(string userId)
        {
            var userGoals = await this.m_goalRepository.FindEntitiesAsync(t => t.UserId == userId);
            return userGoals.ToList();
        }




        public IList<Class> GetAllClassOfCourse(string courseId)
        {
            // return list course where course id matches column in table
            return this.m_classRepository.Select(t => t.CourseId == courseId).OrderBy(t => t.Order).ToList();
        }

        public async Task<IList<Class>> GetAllClassOfCourseAsync(string courseId)
        {
            var classes = await this.m_classRepository.SelectAsync(t => t.CourseId == courseId);
            // return list classes 
            return classes.OrderBy(t => t.Order).ToList();
        }
    }
}
