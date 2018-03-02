using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Data.Context;
using HePa.Service.Services.CurrencyServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace HePa.Service.Services.ExperienceServices
{
    public class ExperienceService : IExperienceService
    {
        // declare respository
        private readonly IRepository<ApplicationUser> m_userRepository;
        private readonly IRepository<UserExperience> m_userExperienceRepository;
        private readonly IRepository<LearnWordHistory> m_userHistoryRepository;

        // Inject contructor
        public ExperienceService(IRepository<ApplicationUser> m_userRepository,
            IRepository<UserExperience> m_userExperienceRepository, 
            IRepository<LearnWordHistory> m_userHistoryRepository)
        {
            this.m_userRepository = m_userRepository;
            this.m_userExperienceRepository = m_userExperienceRepository;
            this.m_userHistoryRepository = m_userHistoryRepository;
        }
        public ServiceResult AddExpForRegister(string userId)
        {
            try
            {
                // Create new exp record 
                UserExperience record = EntityFactory
                    .CreateUserExperience(userId, Constraint.MemberExpSystem.UserRegister.ID,
                                                Constraint.MemberExpSystem.UserRegister.NAME,
                                                Constraint.MemberExpSystem.UserRegister.EXP);
                // save changes for user
                this.m_userRepository.SaveChanges();
                // insert record in history get exp 
                this.m_userExperienceRepository.Insert(record);
                // save changes for user exp
                this.m_userExperienceRepository.SaveChanges();
                // return successfull
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                // return error
                return ServiceResult.AddError(ex.Message);
            }
        }

        public async Task<ServiceResult> AddExpForRegisterAsync(string userId)
        {
            try
            {
                // Create new exp record 
                UserExperience record = EntityFactory
                    .CreateUserExperience(userId, Constraint.MemberExpSystem.UserRegister.ID,
                                                Constraint.MemberExpSystem.UserRegister.NAME,
                                                Constraint.MemberExpSystem.UserRegister.EXP);
                // insert record in history get exp 
                await this.m_userExperienceRepository.InsertAsync(record);
                // save changes for user exp
                await this.m_userExperienceRepository.SaveChangesAsync();
                // return successfull
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                // return error
                return ServiceResult.AddError(ex.Message);
            }
        }


        public ServiceResult AddExpForLearnWord(string userId, string wordId, int score, string url = "")
        {
            /*
            try
            {
                // Get learn histories of user based on word
                IQueryable<LearnWordHistory> histories = this.m_userHistoryRepository
                    .FindEntities(t => t.UserId == userId && t.WordId == wordId);
                // Calculate total score user get from this word
                int maxScore = histories.Max(t => t.ArchivedScore);
                // If user archive max score
                // Not save result 
                if (maxScore >= 10)
                {
                    return ServiceResult.Success;
                }
                else
                {
                    // create new score 
                    int newScore = 0; 
                    // check if add new score larger than 10
                    if ((maxScore + score) >= 10)
                    {
                        newScore = 10 - maxScore;
                    }
                    else
                    {
                        newScore = score;
                    }
                    // create exp record
                    UserExperience experience = EntityFactory
                        .CreateUserExperience(userId,
                        Constraint.MemberExpSystem.UserLearnWord.ID,
                        url, score);
                    // insert record into database 
                    this.m_userExperienceRepository.Insert(experience);
                    // save changes 
                    this.m_userExperienceRepository.SaveChanges();
                    // get current user 
                    ApplicationUser user = this.m_userRepository.FindEntity(t => t.Id == userId);
                    // get new exp 
                    int newExp = user.CurrentExp + score;
                    // Update 
                    user.CurrentExp = newExp;
                    // update record 
                    this.m_userRepository.Update(user);
                    // save changes 
                    this.m_userRepository.SaveChanges();
                    // return successful
                    return ServiceResult.Success;
                }
            }
            catch (Exception ex)
            {
                // return error
                return ServiceResult.AddError(ex.Message);
            }*/
            return ServiceResult.Success;
        }

        public async Task<ServiceResult> AddExpForLearnWordAsync(string userId, string wordId, int score, string url = "")
        {
            try
            {
                int maxScore = 0;
                // Get learn histories of user based on word
                IQueryable<LearnWordHistory> histories = this.m_userHistoryRepository
                    .Select(t => t.UserId == userId && t.WordId == wordId);
                // first learn
                if (histories.Count() == 0)
                {
                    // Do nothing
                }
                else
                {
                    // Calculate total score user get from this word
                    maxScore = histories.Max(t => t.ArchivedScore);
                }
                // If user archive max score
                // Not save result 
                if (maxScore >= 10)
                {
                    return ServiceResult.Success;
                }
                else
                {
                    // create new score 
                    int newScore = 0;
                    // check if add new score larger than 10
                    if (maxScore >= score)
                    {
                        return ServiceResult.Success;
                    }
                    else
                    {
                        newScore = score - maxScore;
                        // create exp record
                        UserExperience experience = EntityFactory
                            .CreateUserExperience(userId,
                            Constraint.MemberExpSystem.UserLearnWord.ID,
                            url, newScore);
                        // insert record into database 
                        await this.m_userExperienceRepository.InsertAsync(experience);
                        // save changes 
                        await this.m_userExperienceRepository.SaveChangesAsync();
                        // get current user 
                        ApplicationUser user = await this.m_userRepository.FindEntityAsync(t => t.Id == userId);
                        // get new exp 
                        int newExp = user.CurrentExp + newScore;
                        // Update 
                        user.CurrentExp = newExp;
                        // update record 
                        await this.m_userRepository.UpdateAsync(user);
                        // save changes 
                        await this.m_userRepository.SaveChangesAsync();
                        // return successful
                        return ServiceResult.Success;
                    }
                }
            }
            catch (Exception ex)
            {
                // return error
                return ServiceResult.AddError(ex.Message);
            }
        }


        public ServiceResult AddExpForContinuousLearning(string userId, IList<TodayWord> todayWords)
        {
            try
            {
                // get count of successed words
                int count = todayWords.Where(t => t.IsPassed == true).Count();
                // number of words 
                int numberOfWords = todayWords.Count;
                // comple all words 
                if (count == numberOfWords)
                {
                    // get user 
                    ApplicationUser user = this.m_userRepository.FindEntity(t => t.Id == userId);
                    // get number of conts days
                    int numberOfContDays = (DateTime.Now - user.LastDiligentDate.Value).Days;
                    // if lastday
                    if (numberOfContDays == 1)
                    {
                        // Update counter 
                        user.ContinousCounter = user.ContinousCounter + 1;
                        // check and increase exp 
                        int contExp = this.GetExpOfContinuous(user.ContinousCounter);
                        // check if user archive max bonus score
                        if (user.ContinousCounter == 180)
                        {
                            // reset counter 
                            user.ContinousCounter = 0;
                        }
                        else
                        {
                            // Do nothing
                        }
                        if (contExp != 0)
                        {
                            // finally, update exp for user 
                            user.CurrentExp = user.CurrentExp + contExp;
                            // update lastest continuous day 
                            user.LastDiligentDate = DateTime.Now;
                            // Update table 
                            this.m_userRepository.Update(user);
                            // save changes 
                            this.m_userRepository.SaveChanges();
                            // return successfull
                            return ServiceResult.Success;
                        }
                        else
                        {
                            // do nothing 
                            // return success
                            return ServiceResult.Success;
                        }
                    }
                    else
                    {
                        return ServiceResult.Success;
                    }
                }
                else
                {
                    // Not update counter 
                    return ServiceResult.Success;
                }
            }
            catch (Exception ex)
            {
                // return errors 
                return ServiceResult.AddError(ex.Message);
            }
        }

        public async Task<ServiceResult> AddExpForContinuousLearningAsync(string userId, IList<TodayWord> todayWords)
        {
            try
            {
                // comple all words
                bool isPass = IsPassAllWords(todayWords);
                if (isPass == true)
                {
                    // Assume 
                    int numberOfContDays = 1;
                    // get user 
                    ApplicationUser user = await this.m_userRepository.FindEntityAsync(t => t.Id == userId);
                    // Check if hasvalue
                    if (user.LastDiligentDate.HasValue == false)
                    {
                        // Do nothing
                    }
                    else
                    {
                        // get number of conts days
                        numberOfContDays = (DateTime.Now - user.LastDiligentDate.Value).Days;
                    }
                    // if lastday
                    if (numberOfContDays == 1)
                    {
                        // Update counter 
                        user.ContinousCounter = user.ContinousCounter + 1;
                        // update current date 
                        user.LastDiligentDate = DateTime.Now;
                        // check and increase exp 
                        int contExp = this.GetExpOfContinuous(user.ContinousCounter);
                        // check if user archive max bonus score
                        if (user.ContinousCounter == 180)
                        {
                            // reset counter 
                            user.ContinousCounter = 0;
                        }
                        else
                        {
                            // Do nothing
                        }
                        if (contExp == 0)
                        {
                            // Do nothing
                            // Do not write any records
                        }
                        else
                        {
                            // create exp history 
                            UserExperience expRecord = EntityFactory
                                .CreateUserExperience(userId, Constraint.MemberExpSystem.ContinuousLearning.ID,
                                Constraint.MemberExpSystem.ContinuousLearning.NAME, contExp);
                            // insert to db
                            await this.m_userExperienceRepository.InsertAsync(expRecord);
                            // save changes 
                            await this.m_userExperienceRepository.SaveChangesAsync();
                        }
                        // finally, update exp for user 
                        user.CurrentExp = user.CurrentExp + contExp;
                        // Update table 
                        await this.m_userRepository.UpdateAsync(user);
                        // save changes 
                        await this.m_userRepository.SaveChangesAsync();
                        // return successfull
                        return ServiceResult.Success;
                    }
                    else
                    {
                        // Update user data 
                        // reset
                        user.LastDiligentDate = DateTime.Now;
                        user.ContinousCounter = 1;
                        // create exp history 
                        UserExperience expRecord = EntityFactory
                            .CreateUserExperience(userId, Constraint.MemberExpSystem.ContinuousLearning.ID,
                            Constraint.MemberExpSystem.ContinuousLearning.NAME, 20);
                        // insert to db
                        await this.m_userExperienceRepository.InsertAsync(expRecord);
                        // save changes 
                        await this.m_userExperienceRepository.SaveChangesAsync();
                        // finally, update exp for user 
                        // add 20 exp for first use
                        user.CurrentExp = user.CurrentExp + 20;
                        // Update table 
                        await this.m_userRepository.UpdateAsync(user);
                        // save changes 
                        await this.m_userRepository.SaveChangesAsync();
                        // return successfull
                        return ServiceResult.Success;
                    }
                }
                else
                {
                    // Not update counter 
                    return ServiceResult.Success;
                }
            }
            catch (Exception ex)
            {
                // return errors 
                return ServiceResult.AddError(ex.Message);
            }
        }

        #region helpers
        private bool IsPassAllWords(IList<TodayWord> todayWords)
        {
            // get count of successed words
            int count = todayWords.Where(t => t.IsPassed == true).Count();
            // number of words 
            int numberOfWords = todayWords.Count;
            // pass all words 
            if (count == numberOfWords)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// get exp from continuous learning
        /// </summary>
        /// <param name="counter">number of days</param>
        /// <returns></returns>
        private int GetExpOfContinuous(int counter)
        {
            if (counter == 1)
            {
                return 20;
            }
            else if (counter == 3)
            {
                return 80;
            }
            else if (counter == 7)
            {
                return 200;
            }
            else if (counter == 15)
            {
                return 450;
            }
            else if (counter == 30)
            {
                return 1000;
            }
            else if (counter == 60)
            {
                return 2500;
            }
            else if (counter == 90)
            {
                return 4000;
            }
            else if (counter == 180)
            {
                return 10000;
            }
            else
            {
                return 0;
            }
        }
        #endregion 
    

        public IList<UserExperience> GetExperienceHistory(string userId, int page, int pageSize)
        {
            // check if user Id is null 
            if (String.IsNullOrEmpty(userId) == true)
            {
                // return empty list
                return new List<UserExperience>();
            }
            else
            {
                // get list exps
                IList<UserExperience> exps = this.m_userExperienceRepository
                    .FindEntities(t => t.UserId == userId, page, pageSize, t => t.CreatedDate, false).ToList();
                // return list exps
                return exps;
            }
        }

        public async Task<IList<UserExperience>> GetExperienceHistoryAsync(string userId, int page, int pageSize)
        {
            // check if user Id is null 
            if (String.IsNullOrEmpty(userId) == true)
            {
                // return empty list
                return new List<UserExperience>();
            }
            else
            {
                // get list exps
                IQueryable<UserExperience> expsQuery = await this.m_userExperienceRepository
                    .FindEntitiesAsync(t => t.UserId == userId, page, pageSize, t => t.CreatedDate, false);
                // return list exps
                return expsQuery.ToList();
            }
        }
    }
}
