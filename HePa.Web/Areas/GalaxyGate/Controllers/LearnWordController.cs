using HePa.Core.Entities;
using HePa.Service.Services;
using System;
using System.Linq;
using System.Collections.Generic;
using System.Web.Mvc;
using HePa.Web.Areas.GalaxyGate.ViewModels;
using Microsoft.AspNet.Identity;
using System.Threading.Tasks;
using HePa.Service.Services.Lectures;
using HePa.Core.Helpers;
using HePa.Service.Services.CurrencyServices;
using HePa.Service.Services.ExperienceServices;
using HePa.Service.Services.Users;

namespace HePa.Web.Areas.GalaxyGate.Controllers
{
    [RouteArea("galaxygate")]
    [Authorize]
    public class LearnWordController : Controller
    {
        private ICourseService m_courseService;
        private ILearnWordService m_learnWordService;
        private ICommentService m_commentService;
        private IExperienceService m_expService;
        private IClassService m_classService;
        private ICurrencyUserManager m_currencyUserService;
        private IUserService m_userService;

        private static readonly int UNPAID_USER_WORD_AMOUNT = 2;

        private static readonly int NUMBER_OF_COMMENTS_PER_PAGE = 5;
        public LearnWordController(ICommentService m_commentService, ILearnWordService m_learnWordService, ICurrencyUserManager m_currencyUserService,
            IExperienceService m_expService, ICourseService m_courseService, IClassService m_classService, IUserService m_userService)
        {
            this.m_learnWordService = m_learnWordService;
            this.m_commentService = m_commentService;
            this.m_currencyUserService = m_currencyUserService;
            this.m_expService = m_expService;
            this.m_courseService = m_courseService;
            this.m_classService = m_classService;
            this.m_userService = m_userService;
        }

        [AllowAnonymous]
        [Route("~/galaxy-gate/words")]
        public async Task<ActionResult> CourseInfo()
        {
            DateTime start = DateTime.Now;
            // begin action 
            // get user id
            string userId = User.Identity.GetUserId();
            // get all classes in "tu-vung" course
            var course = await m_courseService.GetCourseByIdAsync(Constraint.HepaCourse.TU_VUNG);
            // create list of classes 
            IList<ClassSummaryViewModel> listClassesSummary = new List<ClassSummaryViewModel>();
            // get all class
            IList<Class> allClasses = await this.m_classService.GetAllClassOfCourseAsync(Constraint.HepaCourse.TU_VUNG);
            // add more info for class summary 
            foreach (Class classElement in allClasses)
            {
                // check if registered 
                bool isRegisterd = await this.m_classService.IsUserRegisteredClassAsync(userId, classElement.Id);
                // Update class dedatils 
                // get archieve amount 
                var achievingAmount = m_learnWordService.GetUserPassedWordAmountCount(userId, classElement.Id);
                // passed today 
                int passedToDayWords = await m_learnWordService.NumberOfPassedWordsTodayAsync(userId, classElement.Id);
                // get number of words user has learned today 
                int numberOfWords = await this.m_learnWordService.NumberOfTodayWordsAsync(userId, classElement.Id);
                // create element 
                ClassSummaryViewModel classSummaryElement = new ClassSummaryViewModel(classElement, isRegisterd, 0, achievingAmount, numberOfWords, passedToDayWords);
                // Add element
                listClassesSummary.Add(classSummaryElement);
            }

            CourseViewModel model = new CourseViewModel(listClassesSummary, course);
            // date time 
            System.Diagnostics.Debug.WriteLine("Course info: " + (DateTime.Now - start));
            // return model 
            return View(model);
        }

        [AllowAnonymous]
        [Route("~/galaxy-gate/words/{classId}")]
        public async Task<ActionResult> ClassInfoAndRegister(string classId)
        {
            DateTime start = DateTime.Now;
            // Get user id 
            string userId = User.Identity.GetUserId();
            // check user registered class before or not 
            bool isRegister = await this.m_classService.IsUserRegisteredClassAsync(userId, classId);
            // get class info
            Class classInfo = await this.m_classService.GetClassAsync(classId);
            // get course info 
            Course courseInfo = await this.m_courseService.GetCourseByIdAsync(Constraint.HepaCourse.TU_VUNG);
            // Get list of words user has to learn today
            IList<TodayWord> todayWords = await this.m_learnWordService.GetListWordsTodayAsync(userId, classId);
            // create model 
            ClassInfoAndRegisterViewModel model = new ClassInfoAndRegisterViewModel(classInfo, courseInfo, todayWords, isRegister);
            // check if user is paid 
            bool isPaid = await m_userService.IsPaid(userId);
            if (isPaid == true)
            {
                Session["isPaid"] = "true";
            }
            else
            {
                Session["isPaid"] = "false";
            }
            System.Diagnostics.Debug.WriteLine("Class info and register: {0}", (DateTime.Now - start));
            // return model
            return View(model);
        }

        #region resume class
        [Route("~/galaxy-gate/words/{classId}/Resume")]
        public async Task<ActionResult> Resume(string classId)
        {
            DateTime start = DateTime.Now;
            // begin action 
            // get user id
            string userId = User.Identity.GetUserId();
            // get list word of today
            IList<TodayWord> todayWords = new List<TodayWord>();
            // get lít todaywords 
            todayWords = TempData["ListWordToDay"] as IList<TodayWord>;
            // ì empty, select new list
            if (todayWords == null || todayWords.Count == 0)
            {
                todayWords = await m_learnWordService.GetListWordsTodayAsync(userId, classId);
                TempData["ListWordToDay"] = todayWords;
            }
            else
            {
                // Do nothing
            }
            // Get first word to start 
            TodayWord startToDay = await m_learnWordService.GetWordToLearnAsync(todayWords);
            TempData["FirstWord"] = startToDay;
            if (startToDay == null)
            {
                //return RedirectToAction("Lecture", "LearnWord",
                //new { area = "galaxygate", classId = classId, wordId = todayWords[0].Word.Id, word = todayWords[0].Word.aWord });
                bool isRegistered = await this.m_classService.IsUserRegisteredClassAsync(userId, classId);
                // if user join class 
                if (isRegistered == true)
                {
                    // redirect to acction result 
                    return RedirectToAction("ClassInfoAndRegister", "LearnWord", new { area = "galaxygate", classId = classId });
                }
                else
                {
                    // allow user to register 
                    return RedirectToAction("ClassInfoAndRegister", "LearnWord", new { area = "galaxygate", classId = classId });
                }
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("Resume: {0}", (DateTime.Now - start));
                return RedirectToAction("Lecture", "LearnWord",
                new { area = "galaxygate", classId = classId, wordId = startToDay.Word.Id, word = startToDay.Word.aWord });
            }

        }
        #endregion

        //[Route("~/galaxy-gate/tu-vung/{classId?}")]
        //public ActionResult ErrorRedirect()
        //{
        //    return RedirectToAction("CourseInfo", "LearnWord", new { area = "galaxygate" });
        //}

        #region Lecture
        [Route("~/galaxy-gate/words/{classId}/{word}-{wordId}.html")]
        [AllowAnonymous]
        [HttpGet]
        public async Task<ActionResult> Lecture(string classId, string wordId)
        {
            DateTime start = DateTime.Now;
            // begin action 
            // Init values
            bool isAllowView = true;
            bool isAllowLearn = true;
            bool isAllowResume = true;
            IList<TodayWord> _todayWords = new List<TodayWord>();
            TodayWord startToDay = new TodayWord();
            // get user id
            string userId = User.Identity.GetUserId();
            //Check user release date before learn (check in LearnWordController action Lecture and in AccountController action GetActiveHistory)
            // await m_userService.CheckUserReleaseAsync(userId);

            // get data
            TodayWord word = TempData["FirstWord"] as TodayWord;
            IList<TodayWord> todayWords = TempData["ListWordToDay"] as IList<TodayWord>;
            ViewWordViewModel viewWordVM = new ViewWordViewModel();
            // If resume class
            if (word != null && todayWords != null)
            {
                // Loading to view model
                LectureViewModel model = new LectureViewModel(word, todayWords);
                // Passing into next request
                TempData["ListWords"] = todayWords;
                TempData["Word"] = word;
                System.Diagnostics.Debug.WriteLine("Lecture {0}", (DateTime.Now - start));
                // return view
                return View(model);
            }
            // if user calls by url 
            else
            {
                // get list word of today
                _todayWords = await m_learnWordService.GetListWordsTodayAsync(userId, classId);
                // Check if user has learn this word or not
                isAllowView = await m_learnWordService.IsAllowToViewAsync(_todayWords, wordId);
                isAllowLearn = await this.m_learnWordService.IsUserLearnWordBeforeAsync(userId, wordId);
                isAllowResume = await this.m_classService.IsUserRegisteredClassAsync(userId, classId);
                // continues
                // Get word to start         
                startToDay = await m_learnWordService.GetTodayWordAsync(userId, classId, wordId);
                // if word not found, this is anonymous access
                if (startToDay == null)
                {
                    Word w = await m_learnWordService.GetWordByIdAsync(wordId);
                    startToDay = EntityFactory.CreateTodayWord(userId, classId, w, true, false);
                }
                else
                {
                    // Do nothing
                }
            }
            // If anonymous type, load comment only

            viewWordVM = await this.GetWordDetailsVM(userId, wordId);
            // Loading to view model
            LectureViewModel md = new LectureViewModel(startToDay, _todayWords, viewWordVM, isAllowView, isAllowLearn, isAllowResume);
            // Passing into next request
            TempData["ListWords"] = _todayWords;
            TempData["Word"] = startToDay;
            System.Diagnostics.Debug.WriteLine("Lecture {0}", (DateTime.Now - start));
            // return view
            return View(md);
        }
        #endregion

        #region comment processes
        // Post comment 
        [Route("~/galaxy-gate/words/post-comment/{wordId}-{word}")]
        public async Task<ActionResult> PostComment(ViewWordViewModel model, string wordId)
        {
            if (!String.IsNullOrWhiteSpace(model.Comment))
            {
                // get account id
                string userId = await Task.Run(() => User.Identity.GetUserId());
                // add comment
                WordComment comment = await this.m_commentService.PostWordCommentAsync(userId, wordId, model.Comment);
                // Check result
                if (comment != null)
                {
                    // Update target 
                    return PartialView("_WordCommentPartial", comment);
                }
                else
                {
                    return View();
                }
            }
            else
            {
                return View();
            }
        }

        [Route("~/galaxy-gate/words/filter/date")]
        [HttpPost]
        public async Task<ActionResult> DateTimeFilter(string wordId)
        {
            // Set filter type 
            Session["FilterType"] = "Date";
            // Get user id
            string currentUserId = User.Identity.GetUserId();
            // get all word comment, order by date
            IList<WordComment> wordComments = await this.m_commentService
                .GetWordCommentsAsync(wordId, currentUserId, 1, NUMBER_OF_COMMENTS_PER_PAGE);
            // create list comment model
            IList<WordCommentViewModel> comments = new List<WordCommentViewModel>();
            foreach (WordComment wordComment in wordComments)
            {
                WordCommentViewModel comment = new WordCommentViewModel
                {
                    Comment = wordComment,
                    IsLiked = await this.m_commentService.IsLikedCommentAsync(currentUserId, wordComment.Id),
                    IsAllowDelete = currentUserId == wordComment.UserId ? true : false,
                };
                comments.Add(comment);
            }
            ListWordCommentViewModel cmms = new ListWordCommentViewModel(comments);
            // Update partial view
            return PartialView("_ListWordCommentPartial", cmms);
        }

        [Route("~/galaxy-gate/words/filter/interested")]
        public async Task<ActionResult> InterestedFilter(string wordId)
        {
            // Set filter type
            Session["FilterType"] = "Votes";
            // Get user id
            string currentUserId = User.Identity.GetUserId();
            // get all word comment, order by date
            IList<WordComment> wordComments = await this.m_commentService
                .GetWordCommentsAsync(wordId, currentUserId, 1, NUMBER_OF_COMMENTS_PER_PAGE, "Votes");
            // create list comment model
            IList<WordCommentViewModel> comments = new List<WordCommentViewModel>();
            foreach (WordComment wordComment in wordComments)
            {
                WordCommentViewModel comment = new WordCommentViewModel
                {
                    Comment = wordComment,
                    IsLiked = await this.m_commentService.IsLikedCommentAsync(currentUserId, wordComment.Id),
                    IsAllowDelete = currentUserId == wordComment.UserId ? true : false,
                };
                comments.Add(comment);
            }
            // Updatge partial view
            ListWordCommentViewModel cmms = new ListWordCommentViewModel(comments);
            return PartialView("_ListWordCommentPartial", cmms);
        }

        [HttpPost]
        [Route("~/galaxy-gate/words/getComment")]
        public async Task<ActionResult> GetMoreCommentItems(string wordId, int page)
        {
            string filterType = "";
            if (Session["FilterType"] != null)
            {
                filterType = Session["FilterType"].ToString();
            }
            else
            {
                filterType = "Date";
            }
            string currentUserId = User.Identity.GetUserId();
            if (filterType == "Votes")
            {
                // Select Interested
                IList<WordComment> wordComments = await this.m_commentService
                .GetWordCommentsAsync(wordId, currentUserId, page, NUMBER_OF_COMMENTS_PER_PAGE, "Votes");
                IList<WordCommentViewModel> comments = new List<WordCommentViewModel>();
                foreach (WordComment wordComment in wordComments)
                {
                    WordCommentViewModel comment = new WordCommentViewModel
                    {
                        Comment = wordComment,
                        IsLiked = await this.m_commentService.IsLikedCommentAsync(currentUserId, wordComment.Id),
                        IsAllowDelete = currentUserId == wordComment.UserId ? true : false,
                    };
                    comments.Add(comment);
                }
                // Update partial view
                ListWordCommentViewModel cmms = new ListWordCommentViewModel(comments);
                // Update partial view
                return PartialView("_ListWordCommentPartial", cmms);
            }
            else
            {
                // Select DateTime
                IList<WordComment> wordComments = await this.m_commentService
                .GetWordCommentsAsync(wordId, currentUserId, page, NUMBER_OF_COMMENTS_PER_PAGE);
                IList<WordCommentViewModel> comments = new List<WordCommentViewModel>();
                foreach (WordComment wordComment in wordComments)
                {
                    WordCommentViewModel comment = new WordCommentViewModel
                    {
                        Comment = wordComment,
                        IsLiked = await this.m_commentService.IsLikedCommentAsync(currentUserId, wordComment.Id),
                    };
                    comments.Add(comment);
                }
                if (comments.Count > 0)
                {
                    ListWordCommentViewModel cmms = new ListWordCommentViewModel(comments);
                    // Update partial view
                    return PartialView("_ListWordCommentPartial", cmms);
                }
                else
                {
                    string end = "end";
                    return Json(end, JsonRequestBehavior.AllowGet);
                }
            }
        }
        #endregion


        #region like and dislike comment
        [Route("~/galaxy-gate/words/like/comment")]
        [HttpPost]
        public async Task<ActionResult> LikeComment(string commentId)
        {
            // Get user id
            string userId = User.Identity.GetUserId();
            // Like comment
            ServiceResult result = await this.m_commentService.LikeCommentAsync(userId, commentId);

            //Add currency
            var userCommentId = m_commentService.getUserIdByWordCommentId(commentId);
            await m_currencyUserService.IncreaseCurrencyAmountAsync(userCommentId, Constraint.CurrencySystem.HEART, Constraint.CurrencySystem.LIKED_COMMENT);
            return Json("success", JsonRequestBehavior.AllowGet);
        }

        [Route("~/galaxy-gate/words/unlike/comment")]
        [HttpPost]
        public async Task<ActionResult> UnlikeComment(string commentId)
        {
            string userId = User.Identity.GetUserId();
            ServiceResult result = await this.m_commentService.UnlikeCommentAsync(userId, commentId);

            //Add currency
            var userCommentId = m_commentService.getUserIdByWordCommentId(commentId);
            await m_currencyUserService.IncreaseCurrencyAmountAsync(userCommentId, Constraint.CurrencySystem.HEART, Constraint.CurrencySystem.DISLIKED_COMMENT);
            return Json("success", JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region DELETE comment 
        // DELETE COMMENT
        // USER just delete his comments 
        // ADMIN can be delete all comments
        [HttpPost]
        [Route("~/galaxy-gate/words/delete/comment")]
        public async Task<ActionResult> DeleteComment(string commentId)
        {
            await this.m_commentService.DeleteCommentAsync(commentId);
            return Json("success", JsonRequestBehavior.AllowGet);
        }
        #endregion 

        #region save score
        [Route("~/galaxy-gate/words/savescore")]
        [HttpGet]
        public async Task<ActionResult> SaveScore(int score)
        {
            var userId = User.Identity.GetUserId().ToString();
            if (score >= 0 && score <= 10)
            {
                TodayWord word = TempData["Word"] as TodayWord;
                IList<TodayWord> todayWords = TempData["ListWords"] as IList<TodayWord>;

                LectureViewModel model = new LectureViewModel(word, todayWords);
                // increase exp;
                await m_expService.AddExpForLearnWordAsync(userId, word.WordId, score, word.WordId); // comple word
                // save learnword result
                var result = m_learnWordService.SaveLearnWordResult(model.TodayWord, score);
                await m_expService.AddExpForContinuousLearningAsync(userId, todayWords); // continues if complete all words

                TempData["ListWordToDay"] = todayWords;
                // Update partial view
                if (result == ServiceResult.Success)
                {
                    return PartialView("_ListTodayWordPartial", todayWords);
                }
            }

            return Json("error", JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region Facebook Partial View
        [Route("~/galaxy-gate/words/facebook")]
        [HttpPost]
        public ActionResult FacebookPartial()
        {
            return PartialView("_FacebookCommentBoxPartialView");
        }
        #endregion

        #region Increasing Exp
        [HttpPost]
        [Route("~/galaxy-gate/words/IncreaseFireExp")]
        //Tang diem nang no khi hoc het tu trong 1 ngay
        public async Task<ActionResult> IncreaseFireExp()
        {/*
            var user = new ApplicationUser();
            // var user = m_expService.GetExpUserByUserId(User.Identity.GetUserId(), ExpirenceScoreSystem.FireExp);

            ServiceResult result;
            if (user != null)
            {

                if (user.LastUpdate < DateTime.Now.Date)
                {
                    if ((DateTime.Now.Date - user.LastUpdate.Value.Date).Days > 1)
                    {
                        //Neu không liên tục thì cho FireExp xuống 1 lại
                        // result = await m_expService.SetUserExpAsync(User.Identity.GetUserId(), 1, ExpirenceScoreSystem.FireExp);
                    }
                    else
                    {
                        //Nếu học liên tục thì + dồn thêm 1
                        // result = await m_expService.IncreaseUserExpAsync(User.Identity.GetUserId(), 1, ExpirenceScoreSystem.FireExp);
                    }
                }
                else
                {
                    result = ServiceResult.Success;
                }
            }
            else
            {
                result = await m_expService.AddExpForRegisterAsync(null);
                // result = await m_expService.CreateUserExpAsync(User.Identity.GetUserId(), 1, ExpirenceScoreSystem.FireExp);
            }
            if (ServiceResult.Success == result)
            {
                return Json("successfully", JsonRequestBehavior.AllowGet);
            }
            return Json("error", JsonRequestBehavior.AllowGet);*/
            return View();
        }

        #endregion

        [HttpPost]
        [ValidateAntiForgeryToken]
        [Route("~/galaxy-gate/register-course-confirmation")]
        public async Task<ActionResult> RegisterConfirm(ClassInfoAndRegisterViewModel model)
        {
            // CHECK  NUMBER OF WEEKS
            if (model.NumberOfWeeks <= 0)
            {
                model.NumberOfWeeks = 8;
            }
            // Get current user id
            string userId = User.Identity.GetUserId();
            // Register to a class
            ServiceResult result;
            if (await m_userService.IsPaid(userId) == true)
            {
                Session["isPaid"] = true;
                result = await m_classService
                                .RegisterToClassAsync(userId, model.CourseInfo.Id, model.ClassInfo.Id, model.NumberOfWeeks);
            }
            else
            {
                Session["isPaid"] = false;
                //result = await m_classService
                               //.RegisterToClassAsync(userId, model.CourseInfo.Id, model.ClassInfo.Id, model.NumberOfWeeks);
                result = await m_classService
                 .RegisterToClassAsync(userId, model.CourseInfo.Id, model.ClassInfo.Id, UNPAID_USER_WORD_AMOUNT);
            }
            if (result == ServiceResult.Success)
            {
                // Go to class
                return RedirectToAction("Resume", "LearnWord",
                    new { area = "galaxygate", classId = model.ClassInfo.Id });
            }
            else
            {
                return View("Error");
            }
        }

        [Route("~/galaxy-gate/leave-class")]
        public async Task<ActionResult> LeaveClass(string classId)
        {
            // get user
            string userId = User.Identity.GetUserId();
            // check if user not join class
            bool isRegistered = await m_classService.IsUserRegisteredClassAsync(userId, classId);
            if (isRegistered == false)
            {
                return RedirectToAction("CourseInfo", "LearnWord");
            }
            else
            {
                ServiceResult result = await m_classService.LeaveClassAsync(userId, classId);
                if (result == ServiceResult.Success)
                {
                    return RedirectToAction("CourseInfo", "LearnWord");
                }
                else
                {
                    return View("Error");
                }
            }
        }

        /// <summary>
        /// resume a class
        /// </summary>
        /// <returns></returns>
        /// 
        /// <summary>
        /// user change the goal
        /// </summary>
        /// <returns></returns>
        [Route("~/galaxy-gate/words/{classId}/change-goal")]
        [HttpGet]
        public async Task<ActionResult> ChangeGoal(string classId)
        {
            string userId = User.Identity.GetUserId();
            //check user's pay
            // get current goal 
            var cls = await m_classService.GetUserJoinClass(userId, classId);
            // check if user pay or not 
            bool isPaid = await m_userService.IsPaid(userId);
            // adding to session 
            if (isPaid == true)
            {
                // session is true
                Session["isPaid"] = "true";
            }
            else
            {
                Session["isPaid"] = "false";
            }
            // user not join class 
            if (cls == null)
            {
                return RedirectToAction("CourseInfo", "LearnWord");
            }
            else
            {
                ChangeGoalViewModel model = new ChangeGoalViewModel(cls);
                return View(model);
            }
        }

        /// <summary>
        /// Change goal 
        /// post method
        /// </summary>
        /// <param name="classId">class id</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Route("~/galaxy-gate/words/{classId}/change-goal")]
        public async Task<ActionResult> ChangeGoal(ChangeGoalViewModel model)
        {
            // get current user id
            string userId = User.Identity.GetUserId();
            // change goal

            //check if user's pay
            ServiceResult result;
            bool isPaid = await m_userService.IsPaid(userId);
            if (isPaid == true)
            {
                Session["isPaid"] = "true";
                result = await m_classService.ChangeGoalAsync(userId, model.Class.Id, model.NumberOfDays);
            }
            else
            {
                result = await m_classService.ChangeGoalAsync(userId, model.Class.Id, UNPAID_USER_WORD_AMOUNT);
                //result = await m_classService.ChangeGoalAsync(userId, model.Class.Id, model.NumberOfDays);
                Session["isPaid"] = "false";
            }
            // Check result
            if (result == ServiceResult.Success)
            {
                return RedirectToAction("ClassInfoAndRegister", "LearnWord", new { area = "galaxygate", classId = model.Class.Id });
            }
            else
            {
                return View("Error");
            }
        }

        #region WordDetails
        [Route("word/{classId}/{wordId}-{word}")]
        [AllowAnonymous]
        [HttpGet]
        public async Task<ActionResult> WordDetails(string wordId)
        {
            // get current user Id
            string userId = User.Identity.GetUserId();
            // Create view model
            ViewWordViewModel model = await GetWordDetailsVM(userId, wordId);
            // Add session
            Session["FilterType"] = "Date";
            // return model
            return PartialView("_WordDetailsPartial", model);
        }

        #endregion

        #region Helpers
        private async Task<ViewWordViewModel> GetWordDetailsVM(string currentUserId, string wordId)
        {
            // get current word info
            Word currentWord = await this.m_learnWordService.GetWordByIdAsync(wordId);
            // Current page index, default by 1
            // Get comments 
            IList<WordComment> wordComments = await this.m_commentService
                .GetWordCommentsAsync(wordId, currentUserId, 1, NUMBER_OF_COMMENTS_PER_PAGE);
            // Convert to comment view model 
            IList<WordCommentViewModel> comments = new List<WordCommentViewModel>();
            // Mapping 
            foreach (WordComment wordComment in wordComments)
            {
                WordCommentViewModel comment = new WordCommentViewModel
                {
                    Comment = wordComment,
                    IsLiked = await this.m_commentService.IsLikedCommentAsync(currentUserId, wordComment.Id),
                    IsAllowDelete = currentUserId == wordComment.UserId ? true : false,
                };
                comments.Add(comment);
            }
            // Create view model
            ViewWordViewModel model = new ViewWordViewModel(comments, currentWord);
            return model;
        }
        #endregion
    }
}