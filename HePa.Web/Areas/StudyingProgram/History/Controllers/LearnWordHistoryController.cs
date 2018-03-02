using HePa.Service.Services.Histories;
using HePa.Web.Controllers;
using System.Web.Mvc;
using System.Threading.Tasks;
using System.Collections;
using HePa.Core.Entities;
using System.Collections.Generic;
using Microsoft.AspNet.Identity;
using HePa.Web.Areas.History.ViewModels;
using HePa.Service.Services;
using System;
using System.Linq;
using System.Web.Script.Serialization;

namespace HePa.Web.Areas.History.Controllers
{
    [RouteArea("history")]
    [Authorize]
    public class LearnWordHistoryController : Controller
    {
        /*
        #region 
        private ILearnWordResultService m_learnWordResult;
        private IClassService m_classService;
        private const int NUMBER_OF_ITEMS_IN_PAGE = 6;
        public LearnWordHistoryController(ILearnWordResultService m_learnWordResult, IClassService m_classService)
        {
            this.m_learnWordResult = m_learnWordResult;
            this.m_classService = m_classService;
        }
        #region Learn word results
        [Route("learn/word/archive/class-{classId}")]
        public async Task<ActionResult> ArchiveWord(string classId)
        {
            // First request is first page
            // Get class name 
            Class cl = await this.m_classService.GetClassAsync(classId);
            // get current user
            var userId = User.Identity.GetUserId();
            // Get list words user learns
            IList<LearnWordResult> listOfWords = await this.m_learnWordResult
                .GetArchivedWordsInClassAsync(userId, classId, 1, NUMBER_OF_ITEMS_IN_PAGE);
            // Create view model
            WordResultViewModel model = new WordResultViewModel(cl.ClassName, listOfWords);
            // return view model
            // return PartialView("_ListWordHistoryPartial", model.ListOfWords);
            return View(model);
        }

        [Route("learn/word/failure/class-{classId}")]
        public async Task<ActionResult> FailureWord(string classId)
        {
            // First request is first page
            // Get class name 
            Class cl = await this.m_classService.GetClassAsync(classId);
            // get current user
            var userId = User.Identity.GetUserId();
            // Get list words user learns
            IList<LearnWordResult> listOfWords = await this.m_learnWordResult
                .GetFailureWordsInClassAsync(userId, classId, 1, NUMBER_OF_ITEMS_IN_PAGE);
            // Create view model
            WordResultViewModel model = new WordResultViewModel(cl.ClassName, listOfWords);
            // return view model
            return View(model);
        }

        [Route("learn/word/failure/class-{classId}/more-archived/page={page}")]
        public async Task<ActionResult> GetMoreArchivedItems(string classId, int page)
        {
            // increse page by 1
            // get current user id
            string userId = User.Identity.GetUserId();
            IList<LearnWordResult> listOfWords = await this.m_learnWordResult
                .GetArchivedWordsInClassAsync(userId, classId, page, NUMBER_OF_ITEMS_IN_PAGE);
            return PartialView("_ListWordResultPartial", listOfWords);
        }

        [Route("learn/word/failure/class-{classId}/more-failue/page={page}")]
        public async Task<ActionResult> GetMoreFailureItems(string classId, int page)
        {
            // increse page by 1
            // get current user id
            string userId = User.Identity.GetUserId();
            IList<LearnWordResult> listOfWords = await this.m_learnWordResult
                .GetFailureWordsInClassAsync(userId, classId, page, NUMBER_OF_ITEMS_IN_PAGE);
            return PartialView("_ListWordResultPartial", listOfWords);
        }
        #endregion 

        #region learn word history 
        [Route("learn/word/class-{classId}")]
        public async Task<ActionResult> GetWordHistory(string classId)
        {
            // First request is first page
            // Get class name 
            Class cl = await this.m_classService.GetClassAsync(classId);
            // get current user
            var userId = User.Identity.GetUserId();
            // Get list words user learns
            IList<LearnWordHistory> listOfWords = await this.m_learnWordResult
                .GetLearningWordHistoryAsync(userId, classId, 1, NUMBER_OF_ITEMS_IN_PAGE);
            // Create view model
            WordHistoryViewModel model = new WordHistoryViewModel(cl.ClassName, listOfWords);
            ViewBag.Page = 1;
            return View(model);
        }



        [Route("learn/word/class-{classId}/more/{page}")]
        public async Task<ActionResult> GetMoreWordHistoryItems(string classId, int page)
        {
            int currentPage = page;
            // increse page by 1
            // get current user id
            string userId = User.Identity.GetUserId();
            IList<LearnWordHistory> listOfWords = await this.m_learnWordResult
                .GetLearningWordHistoryAsync(userId, classId, currentPage, NUMBER_OF_ITEMS_IN_PAGE);
            return PartialView("_ListWordHistoryPartial", listOfWords);
        }
        #endregion 
        #endregion
         * */

        private ILearnWordResultService m_learnWordResult;
        private IClassService m_classService;
        public LearnWordHistoryController(ILearnWordResultService m_learnWordResult, IClassService m_classService)
        {
            this.m_learnWordResult = m_learnWordResult;
            this.m_classService = m_classService;
        }

        #region class infomation
        [Route("~/lich-su-hoc-tu/galaxy-gate/words/{classId}")]
        [HttpGet]
        public async Task<ActionResult> ViewClassHistory(string classId)
        {
            Class c = await this.m_classService.GetClassAsync(classId);
            var userId = User.Identity.GetUserId();
            IList<LearnWordHistory> listOfWords = await this.m_learnWordResult
                .GetLearningWordHistoryAsync(userId, classId, 1, 1000);
            IList<LearnWordResult> listOfResults = await this.m_learnWordResult.GetWordResultsAsync(userId, classId, 1, 1000);

            ClassHistoryViewModel model = new ClassHistoryViewModel(c, listOfWords, listOfResults);
            return View(model);
        }

        [Route("~/galaxy-gate/words/khoahoc/lophoc/lich-su-hoc-tu/loadmorehistory")]
        [HttpPost]
        public async Task<ActionResult> LoadMoreWordHistory(string classId)
        {
            var userId = User.Identity.GetUserId();
            IList<LearnWordHistory> listOfWords = await this.m_learnWordResult
                .GetLearningWordHistoryAsync(userId, classId, 1, 1000);
            return Json(listOfWords.ToArray(), JsonRequestBehavior.AllowGet);
        }

        [Route("~/galaxy-gate/words/khoahoc/lophoc/lich-su-hoc-tu/loadmoreresult")]
        [HttpPost]
        public async Task<ActionResult> LoadMoreWordResult(string classId)
        {
            var userId = User.Identity.GetUserId();
            IList<LearnWordResult> listOfWords = await this.m_learnWordResult
                .GetWordResultsAsync(userId, classId, 1, 3);
            WordResultsViewModel results = new WordResultsViewModel(listOfWords);
            var data = new JavaScriptSerializer().Serialize(results);
            return Json(data);
        }
        #endregion
    }
}