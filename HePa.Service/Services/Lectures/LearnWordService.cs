using System.Collections.Generic;
using System.Linq;
using System;
using HePa.Core.Entities;
using System.Threading.Tasks;
using HePa.Data.Context;
using System.Data.Objects;
using HePa.Core.Helpers;
using System.Data.Entity;
using HePa.Service.Services.Users;
using System.Data;
using System.Web;
using HePa.Core.Extensions;

namespace HePa.Service.Services.Lectures
{
    public class LearnWordService : ILearnWordService
    {
        private const double PERSENTAGE_OF_EASY_WORD = 0.5;
        private const double PERSENTAGE_OF_NORMAL_WORD = 0.25;
        private const double PERSENTAGE_OF_HARD_WORD = 0.25;
        private const int UNPAID_USER_WORD_AMOUNT = 2;

        private readonly IRepository<Class> m_classRepository;
        private readonly IRepository<UserGoal> m_goalRepository;
        private readonly IRepository<Word> m_wordRepository;
        private readonly IRepository<LearnWordResult> m_learnWordResultRepository;
        private readonly IRepository<TodayWord> m_todayWordRepository;
        private readonly IRepository<LearnWordHistory> m_learnWordHistoryRepository;
        /// <summary>
        /// Injection ctor
        /// </summary>
        /// <param name="m_wordRepository"></param>
        public LearnWordService(IRepository<Word> m_wordRepository,
            IRepository<Class> m_classRepository, IRepository<UserGoal> m_goalRepository,
            IRepository<LearnWordResult> m_learnWordResultRepository,
            IRepository<TodayWord> m_todayWordRepository,
            IRepository<LearnWordHistory> m_learnWordHistoryRepository)
        {
            this.m_wordRepository = m_wordRepository;
            this.m_classRepository = m_classRepository;
            this.m_goalRepository = m_goalRepository;
            this.m_learnWordResultRepository = m_learnWordResultRepository;
            this.m_todayWordRepository = m_todayWordRepository;
            this.m_learnWordHistoryRepository = m_learnWordHistoryRepository;
        }

        /// <summary>
        /// This code using many select query 
        /// Test 
        /// </summary>
        /// <param name="classId"></param>
        /// <param name="userId"></param>
        /// <returns></returns>
        public IQueryable<Word> GetRemainWords(string classId, string userId)
        {
            IQueryable<string> learnedHistory = this.m_learnWordResultRepository
                .FindEntities(t => t.UserId == userId).Select(t => t.WordId);
            // Get list words
            IQueryable<Word> learnedWords = this.m_wordRepository.Find().Where(t => learnedHistory.Contains(t.Id));
            // get all words 
            IQueryable<Word> allWords = this.m_wordRepository.FindEntities(u => u.ClassBelongId == classId);
            // select remain words
            // IQueryable<Word> ex = allWords.Except(learnedWords);
            IQueryable<Word> ex = this.m_wordRepository.Select(u => u.ClassBelongId == classId, null,
                new List<string> { "ExampleSentences" }, new List<IQueryable<Word>>() { learnedWords }, null, null);
            return ex;
        }

        public async Task<IQueryable<Word>> GetRemainWordsAsync(string classId, string userId)
        {
            return await Task.Run(() => GetRemainWords(classId, userId));
        }

        public IQueryable<Word> GetWords(string classId)
        {
            IQueryable<Word> words = m_wordRepository
                .FindEntities(t => t.ClassBelongId == classId);
            return words;
        }

        public async Task<IQueryable<Word>> GetWordsAsync(string classId)
        {
            return await Task.Run(() => GetWords(classId));
        }

        public Class GetClass(string id)
        {
            return m_classRepository.FindEntity(t => t.Id == id);
        }

        public Task<Class> GetClassAsync(string id)
        {
            return m_classRepository.FindEntityAsync(t => t.Id == id);
        }

        public async Task<IList<TodayWord>> GetListWordsTodayAsync(string userId, string classId)
        {
            try
            {
                // Check if user id is null
                // Set default for user id
                if (String.IsNullOrEmpty(userId) == true)
                {
                    return new List<TodayWord>();
                }
                else
                {
                    // do nothing
                }
                // Check today 
                bool isToday = await this.IsAccessTodayAsync(userId, classId);
                if (true == isToday) // is today
                {
                    return await this.GetTodayWordsAsync(userId, classId);
                }
                else
                {
                    // remove words of the last day
                    await this.RemoveLastestWordsAsync(userId, classId);

                    DateTime start = System.DateTime.Now;
                    // Get remain words 
                    IQueryable<Word> remainWords = await this.GetRemainWordsAsync(classId, userId);
                    IList<Word> tmp = remainWords.ToList();
                    // Compute remain words 
                    // Get current class 
                    Class currentClass = await this.GetClassAsync(classId);
                    // Get user goals 
                    UserGoal currentGoal = await this.m_goalRepository.FindEntityAsync(t => t.ClassId == classId && t.UserId == userId);
                    // Get number of words in class                
                    int numberOfWordToDay = 0;
                    //CHECK USER's PAY

                    //if (HttpContext.Current.User.IsPaid() == true)
                   // {
                        //if paid

                        //int numberOfWordsInClass = 0;
                        //double numberOfDays = 0.0;
                        //numberOfWordsInClass = System.Convert.ToInt16(currentClass.NumberOfWords);
                        //numberOfDays = System.Convert.ToDouble(currentGoal.NumberOfDays);
                        // Change in 15/9/2015
                        numberOfWordToDay = (int)currentGoal.NumberOfDays;
                    //}
                    //else
                    //{
                    //    //not paid
                        
                    //    /*Cập nhật 9/11/2015: không cho user học thử nữa*/
                    //    /*Cập nhật 9/11/2015: cho user học thử lại*/
                    //    numberOfWordToDay = UNPAID_USER_WORD_AMOUNT;
                    //}


                    //Get list words 
                    // Check remain words of 3 sections 
                    /// Get number of words by type
                    int numberOfEasyWords = (int)(numberOfWordToDay * PERSENTAGE_OF_EASY_WORD);
                    int numberOfNormalWords = (int)(numberOfWordToDay * PERSENTAGE_OF_NORMAL_WORD);
                    int numberOfHardWords = numberOfWordToDay - numberOfEasyWords - numberOfNormalWords;

                    // List easy words 
                    var easyWords = remainWords.Where(c => c.Complexity == Complexity.Easy)
                        .OrderBy(t => Guid.NewGuid()).Take(numberOfEasyWords);
                    //Check if get enough easy words
                    var noOfEasyWord = numberOfEasyWords - easyWords.Count();
                    if (noOfEasyWord > 0)
                    {
                        numberOfNormalWords += noOfEasyWord;
                    }
                    // List normal words 
                    var normalWords = remainWords.Where(c => c.Complexity == Complexity.Normal)
                            .OrderBy(t => Guid.NewGuid()).Take(numberOfNormalWords);

                    //Check if get enough normal words
                    var noOfNormalWord = numberOfNormalWords - normalWords.Count();
                    if (noOfNormalWord > 0)
                    {
                        numberOfHardWords += noOfNormalWord;
                    }
                    // List hardWords 
                    var hardWords = remainWords.Where(c => c.Complexity == Complexity.Hard)
                        .OrderBy(t => Guid.NewGuid()).Take(numberOfHardWords);

                    // Adding easy and normal words
                    var todayWords = easyWords.Concat(normalWords);
                    // Append hard words 
                    todayWords = todayWords.Concat(hardWords);

                    //Check if get enough hard words
                    //If not (not execute frequently)
                    var noOfHardlWord = numberOfHardWords - hardWords.Count();
                    if (noOfHardlWord > 0)
                    {
                        //get replaced easy words
                        IList<string> todayWordIds = todayWords.Select(t => t.Id).ToList();
                        var replacedEasyWords = remainWords.Where(x => !todayWordIds.Contains(x.Id) && x.Complexity == Complexity.Easy)
                            .OrderBy(t => Guid.NewGuid()).Take(noOfHardlWord);
                        // Append replaced easy words 
                        todayWords = todayWords.Concat(replacedEasyWords);
                        noOfHardlWord -= replacedEasyWords.Count();
                        //if easy-word table is also overed -> get words in normal table
                        if ((noOfHardlWord - replacedEasyWords.Count()) > 0)
                        {
                            System.Diagnostics.Debug.WriteLine("DMM 1");
                            foreach (var item in todayWords.ToList())
                            {
                                System.Diagnostics.Debug.WriteLine(item.Id);
                            }
                            var replacedNormalWords = remainWords.Where(x => !todayWordIds.Contains(x.Id) && x.Complexity == Complexity.Normal)
                                .OrderBy(t => Guid.NewGuid()).Take((noOfHardlWord - replacedEasyWords.Count()));
                            // Append replaced normal words 
                            System.Diagnostics.Debug.WriteLine("DMM 2");
                            foreach (var item in replacedNormalWords.ToList())
                            {
                                System.Diagnostics.Debug.WriteLine(item.Id);
                            }
                            var countReplaced = replacedNormalWords.Count();
                            var countToday = todayWords.Count();
                            todayWords = todayWords.Concat(replacedNormalWords);
                        }
                    }

                    var wordResults = todayWords.ToList();
                    int i = 1;
                    await this.SaveTodayWordsAsync(userId, wordResults);


                    // Get list today words 
                    var todayWordResults = await this.GetTodayWordsAsync(userId, classId);


                    System.Diagnostics.Debug.WriteLine("First use: {0}", (DateTime.Now - start));
                    //var remainWord = await this.GetRemainWordsAsync(classId, userId);
                    //UserGoal currentGoal = await this.m_goalRepository.FindEntityAsync(t => t.ClassId == classId && t.UserId == userId);
                    //var wordResults = remainWord.OrderBy(t => Guid.NewGuid()).Take((int)currentGoal.NumberOfDays);
                    //await this.SaveTodayWordsAsync(userId, wordResults.ToList());
                    //var todayWordResults = await this.GetTodayWordsAsync(userId, classId);
                    return todayWordResults;
                }
            }
            catch
            {
                return new List<TodayWord>();
            }
        }

        public async Task<Word> GetWordByIdAsync(string wordId)
        {
            var word = await m_wordRepository.SelectAsync(t => t.Id == wordId, null, new List<string> { "ExampleSentences" });
            return word.FirstOrDefault();
        }


        public async Task<IList<TodayWord>> GetTodayWordsAsync(string userId, string classId)
        {
            return await Task.Run(() => GetTodayWords(userId, classId));
        }
        #region helper Helper method
        /// <summary>
        /// Remove all words of the previous day
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns>Task</returns>
        private async Task RemoveLastestWordsAsync(string userId, string classId)
        {
            // remove all
            await this.m_todayWordRepository.DeleteAsync(t => t.UserId == userId && t.ClassId == classId);
            // save changes
            await this.m_todayWordRepository.SaveChangesAsync();
        }

        /// <summary>
        /// Check if user access and get list word or not yet
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="classId">class id</param>
        /// <returns>true or false</returns>
        private async Task<bool> IsAccessTodayAsync(string userId, string classId)
        {
            // Get to day time
            DateTime today = System.DateTime.Today;
            // test
            var www = this.m_classRepository.FindEntity(t => t.Id == classId);
            // get first word
            TodayWord word = await this.m_todayWordRepository.FindEntityAsync(t => t.UserId == userId && t.ClassId == classId);
            // test
            var words = await this.m_todayWordRepository.FindEntitiesAsync(t => t.ClassId == "﻿tu-vung-co-ban");
            int count = words.ToList().Count;
            // dhkjc
            if (word == null)
            {
                return false;
            }
            // Checking 
            if ((today.Day == word.CreatedDate.Value.Day) // equal day
                && (today.Month == word.CreatedDate.Value.Month) // equal month
                && (today.Year == word.CreatedDate.Value.Year)) // equal year
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// Save list today words to database
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="words">list of words</param>
        /// <returns>nothing</returns>
        private async Task SaveTodayWordsAsync(string userId, IList<Word> words)
        {
            DateTime start = System.DateTime.Now;
            foreach (var word in words)
            {
                TodayWord todayword = EntityFactory.CreateTodayWord(userId, word.ClassBelongId, word.Id);
                // LearnWordHistory history = EntityFactory.CreateLearnWordHistory(userId, word.ClassBelongId, word);
                await this.m_todayWordRepository.InsertAsync(todayword);
                // await this.m_learnWordHistoryRepository.InsertAsync(history);
            }

            await this.m_todayWordRepository.SaveChangesAsync();
            // await this.m_learnWordHistoryRepository.SaveChangesAsync();
            System.Diagnostics.Debug.WriteLine("First save data: {0}", (System.DateTime.Now - start));
        }
        #endregion

        public IList<TodayWord> GetTodayWords(string userId, string classId)
        {
            // Check if user
            if (userId == null)
            {
                return new List<TodayWord>();
            }
            var listOfWords = this.m_todayWordRepository
                .Select(t => t.UserId == userId && t.ClassId == classId, null, new List<string> { "Word", "Word.ExampleSentences" });
            return listOfWords.ToList();
        }

        public ServiceResult SaveLearnWordResult(string userId, string classId,
            string wordId, int archivedScore, bool isPassed)
        {
            try
            {
                // Check if user id = null
                if (String.IsNullOrEmpty(userId) == true)
                {
                    return ServiceResult.AddError("User id cannot null or empty");
                }
                // Find entities 
                // Find learn word result 
                LearnWordResult learResult = this.m_learnWordResultRepository
                                                .FindEntity(t => t.UserId == userId && t.ClassId == classId && t.WordId == wordId);
                // Find todaywords 
                return ServiceResult.Success;
            }
            catch
            {
                return null;
            }
        }

        public Task<ServiceResult> SaveLearnWordResultAsync(string userId, string classId,
            string wordId, int archivedScore, bool isPassed)
        {
            throw new NotImplementedException();
        }

        public ServiceResult SaveLearnWordResult(TodayWord todayWord, int archivedScore)
        {
            try
            {
                DateTime start = DateTime.Now;
                // Update todayword 
                if (archivedScore > 5)      // if result > 5, pass this word
                {
                    todayWord.IsPassed = true;
                }
                else                      //vice sera
                {
                    todayWord.IsPassed = false;
                }
                //this word was learned
                todayWord.IsLearned = true;
                // update score
                todayWord.ArchivedScore = archivedScore;
                var tmp = this.m_todayWordRepository.FindEntity(x => x.UserId == todayWord.UserId && x.WordId == todayWord.WordId && x.ClassId == todayWord.ClassId);
                if (tmp != null)
                {
                    this.m_todayWordRepository.Update(todayWord);
                }
                else
                {
                    this.m_todayWordRepository.Insert(todayWord);
                }
                // Save change
                this.m_todayWordRepository.SaveChanges();

                // Save learn word history 
                LearnWordHistory learnWordHistory = EntityFactory
                    .CreateLearnWordHistory(todayWord.UserId, todayWord.ClassId, todayWord.Word, archivedScore);
                // Insert history to db 
                this.m_learnWordHistoryRepository.Insert(learnWordHistory);
                // Save changes 
                this.m_learnWordHistoryRepository.SaveChanges();

                // Insert new entity
                // Find Learn word result
                LearnWordResult learnWordResult = this.m_learnWordResultRepository
                                                .FindEntity(t => t.UserId == todayWord.UserId
                                                         && t.WordId == todayWord.WordId
                                                         && t.ClassId == todayWord.ClassId);
                // Check if user has been learn this word or not 
                if (learnWordResult != null) // if user has learn this word
                {
                    // update result to database if score better 
                    if (archivedScore > learnWordResult.AchievedScore)
                    {
                        learnWordResult.AchievedScore = archivedScore;
                        if (archivedScore > 5)
                        {
                            learnWordResult.IsSuccessed = true;
                        }
                        this.m_learnWordResultRepository.Update(learnWordResult);
                        this.m_learnWordResultRepository.SaveChanges();
                    }
                    else
                    {
                        // Do nothing
                    }
                }
                else // if user has not learn this word
                {
                    // Create new learn word result for him
                    LearnWordResult newLearnWordResult = EntityFactory
                        .CreateLearnWordResult(todayWord.UserId, todayWord.ClassId, todayWord.WordId, archivedScore);
                    // insert to db 
                    this.m_learnWordResultRepository.Insert(newLearnWordResult);
                    // Save changes 
                    this.m_learnWordResultRepository.SaveChanges();
                }
                System.Diagnostics.Debug.WriteLine("Save learned results: " + (DateTime.Now - start));
                return ServiceResult.Success;
            }
            catch (Exception ex) // exception
            {
                return ServiceResult.AddError(ex.Message);
            }
        }

        public async Task<ServiceResult> SaveLearnWordResultAsync(TodayWord todayWord, int archivedScore)
        {
            try
            {
                DateTime start = DateTime.Now;
                // Update todayword 
                if (archivedScore > 5)      // if result > 5, pass this word
                {
                    todayWord.IsPassed = true;
                }
                else                      //vice sera
                {
                    todayWord.IsPassed = false;
                }
                //this word was learned
                todayWord.IsLearned = true;
                var tmp = this.m_todayWordRepository.FindEntity(x => x.UserId == todayWord.UserId && x.WordId == todayWord.WordId && x.ClassId == todayWord.ClassId);
                if (tmp != null)
                {
                    this.m_todayWordRepository.Update(todayWord);
                }
                else
                {
                    this.m_todayWordRepository.Insert(todayWord);
                }
                // Save change
                await this.m_todayWordRepository.SaveChangesAsync();

                // Save learn word history 
                LearnWordHistory learnWordHistory = EntityFactory
                    .CreateLearnWordHistory(todayWord.UserId, todayWord.ClassId, todayWord.Word, archivedScore);
                // Insert history to db 
                await this.m_learnWordHistoryRepository.InsertAsync(learnWordHistory);
                // Save changes 
                await this.m_learnWordHistoryRepository.SaveChangesAsync();

                // Insert new entity
                // Find Learn word result
                LearnWordResult learnWordResult = this.m_learnWordResultRepository
                                                .FindEntity(t => t.UserId == todayWord.UserId
                                                         && t.WordId == todayWord.WordId
                                                         && t.ClassId == todayWord.ClassId);
                // Check if user has been learn this word or not 
                if (learnWordResult != null) // if user has learn this word
                {
                    // update result to database if score better 
                    if (archivedScore > learnWordResult.AchievedScore)
                    {
                        learnWordResult.AchievedScore = archivedScore;
                        if (archivedScore > 5)
                        {
                            learnWordResult.IsSuccessed = true;
                        }
                        await this.m_learnWordResultRepository.UpdateAsync(learnWordResult);
                        await this.m_learnWordResultRepository.SaveChangesAsync();
                    }
                    else
                    {
                        // Do nothing
                    }
                }
                else // if user has not learn this word
                {
                    // Create new learn word result for him
                    LearnWordResult newLearnWordResult = EntityFactory
                        .CreateLearnWordResult(todayWord.UserId, todayWord.ClassId, todayWord.WordId, archivedScore);
                    // insert to db 
                    await this.m_learnWordResultRepository.InsertAsync(newLearnWordResult);
                    // Save changes 
                    await this.m_learnWordResultRepository.SaveChangesAsync();
                }
                System.Diagnostics.Debug.WriteLine("Save learned results async: " + (DateTime.Now - start));
                return ServiceResult.Success;
            }
            catch (Exception ex) // exception
            {
                return ServiceResult.AddError(ex.Message);
            }
        }

        public TodayWord GetWordToLearn(IList<TodayWord> todayWords)
        {
            // Get first word of list remain words labeled not learn
            var word = todayWords.Where(t => t.IsLearned == false).FirstOrDefault();
            // if word is null, get word is not passed
            if (word == null)
            {
                // return first word not passed. orther wise, return null
                return todayWords.Where(t => t.IsPassed == false).FirstOrDefault();
            }
            else
            {
                // return a word if it not null
                return word;
            }

        }

        public async Task<TodayWord> GetWordToLearnAsync(IList<TodayWord> todayWords)
        {
            return await Task.Run(() => GetWordToLearn(todayWords));
        }


        public TodayWord GetTodayWord(string userId, string classId, string wordId)
        {
            if (String.IsNullOrEmpty(userId) == true)
            {
                return null;
            }
            return this.m_todayWordRepository
                .Select(t => t.UserId == userId
                              && t.ClassId == classId
                              && t.WordId == wordId,
                                null,
                              new List<string> { "Word" }).FirstOrDefault();
        }

        public async Task<TodayWord> GetTodayWordAsync(string userId, string classId, string wordId)
        {
            if (String.IsNullOrEmpty(userId) == true)
            {
                return null;
            }

            var todayWord = await this.m_todayWordRepository
                .SelectAsync(t => t.UserId == userId
                              && t.ClassId == classId
                              && t.WordId == wordId,
                              null,
                              new List<string> { "Word", "Word.ExampleSentences" });
            return todayWord.FirstOrDefault();
        }


        public async Task<double> GetLearnWordResult(string userId, string wordId, string classId)
        {
            var learWordResult = await this.m_learnWordResultRepository.FindEntityAsync(x => x.UserId == userId &&
                x.WordId == wordId && x.ClassId == classId);
            if (learWordResult != null) // if word was learned
            {
                return learWordResult.AchievedScore;
            }
            return 0;
        }

        public int GetUserPassedWordAmountCount(string userID, string classID)
        {
            var words = m_learnWordResultRepository.FindEntities(t => t.UserId == userID && t.ClassId == classID);
            var wordList = words.ToList();
            if (wordList != null)
            {
                return wordList.Count;
            }
            return 0;
        }


        public bool IsUserJoinClass(string userId, string classId)
        {
            // find object in goal
            UserGoal obj = this.m_goalRepository
                .FindEntity(t => t.ClassId == classId && t.UserId == userId);
            // check if exist or not
            // if not, return false
            // user has not join this class
            if (obj == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public async Task<bool> IsUserJoinClassAsync(string userId, string classId)
        {
            // find object in goal
            UserGoal obj = await this.m_goalRepository
                .FindEntityAsync(t => t.ClassId == classId && t.UserId == userId);
            // check if exist or not
            // if not, return false
            // user has not join this class
            if (obj == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool IsAllowToView(IList<TodayWord> todayWords, string wordId)
        {
            // If empty set todaywords
            if (todayWords.Count == 0)
            {
                return true;
            }
            else
            {
                bool isIncludeInTodayWords = todayWords.Any(t => t.WordId == wordId);
                if (isIncludeInTodayWords == true)
                {
                    return todayWords
                    .Any(t => t.IsLearned == true // if user learn word today
                            && t.WordId == wordId); // if this word contents in list today words
                }
                else
                {
                    // true if not inclide in list words today
                    return true;
                }
            }
        }

        public async Task<bool> IsAllowToViewAsync(IList<TodayWord> todayWords, string wordId)
        {
            return await Task.Run(() => IsAllowToView(todayWords, wordId));
        }




        public bool IsUserLearnWordBefore(string userId, string wordId)
        {
            // Check if user id is null
            // Set default for user id
            if (userId == null)
            {
                return false;
            }
            else
            {
                // do nothing
            }
            return this.m_learnWordHistoryRepository
                .FindEntities(t => t.UserId == userId // matched id
                            && t.WordId == wordId) // matched word id
                .Any(); // return boolean type
        }

        public async Task<bool> IsUserLearnWordBeforeAsync(string userId, string wordId)
        {
            // Check if user id is null
            // Set default for user id
            if (userId == null)
            {
                return false;
            }
            else
            {
                // do nothing
            }
            IQueryable<LearnWordHistory> query = await this.m_learnWordHistoryRepository
                                                            .FindEntitiesAsync(t => t.UserId == userId // matched id
                                                            && t.WordId == wordId); // matched word id
            return query.Any(); // return boolean type
        }


        public int NumberOfPassedWordsToday(string userId, string classId)
        {
            return this.m_todayWordRepository
                .Select(t => t.UserId == userId 
                    && t.ClassId == classId 
                    && t.IsPassed == true) // if passed
                .Count();
        }

        public async Task<int> NumberOfPassedWordsTodayAsync(string userId, string classId)
        {
            var query = await this.m_todayWordRepository
                .SelectAsync(t => t.UserId == userId
                    && t.ClassId == classId
                    && t.IsPassed == true);
            return query.Count();
        }


        public int NumberOfTodayWords(string userId, string classId)
        {
            // return number of elements in list today words
            return this.m_todayWordRepository.Select(t => t.UserId == userId && t.ClassId == classId).Count();
        }

        public async Task<int> NumberOfTodayWordsAsync(string userId, string classId)
        {
            // get query 
            var query = await this.m_todayWordRepository.SelectAsync(t => t.UserId == userId && t.ClassId == classId);
            // return count of elements 
            return query.Count();
        }


        public int NumberOfPassedWordsToday(IList<TodayWord> todayWords)
        {
            return todayWords.Where(t => t.IsPassed == true).Count();
        }

        public async Task<int> NumberOfPassedWordsTodayAsync(IList<TodayWord> todayWords)
        {
            return await Task.Run(() => NumberOfPassedWordsToday(todayWords));
        }

        public int NumberOfTodayWords(IList<TodayWord> todayWords)
        {
            return todayWords.Count();
        }

        public async Task<int> NumberOfTodayWordsAsync(IList<TodayWord> todayWords)
        {
            return await Task.Run(() => NumberOfTodayWords(todayWords));
        }
    }
}
