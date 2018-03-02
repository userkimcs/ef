using HePa.Service.Services;
using System.Web.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Web.Areas.Admin.ViewModels.ClassAdminViewModels;
using Microsoft.AspNet.Identity;

namespace HePa.Web.Areas.Admin.Controllers
{
    [RouteArea("assmin")]
    [Authorize(Roles = "Admin")]
    public class ClassAdminController : Controller
    {
        private ICourseService m_courseService;
        public ClassAdminController(ICourseService m_courseService)
        {
            this.m_courseService = m_courseService;
        }
        #region Index
        /// <summary>
        /// Class page
        /// Display all courses and class in course
        /// allow admin view detail and edit course/class
        /// </summary>
        /// <returns></returns>
        [Route("class")]
        public async Task<ActionResult> Index()
        {
            // get all course
            IList<Course> model = await this.m_courseService.GetAllCoursesAsync();
            // return list of courses
            return View(model);
        }
        #endregion 

        #region course region 
        [Route("class/course/id={courseId}")]
        [HttpGet]
        public async Task<ActionResult> CourseDetails(string courseId)
        {
            Course model = await this.m_courseService.GetCourseByIdAsync(courseId);
            return View(model);
        }

        [Route("class/course/id={courseId}")]
        [HttpPost]
        public async Task<ActionResult> CourseDetails(Course model)
        {
            ServiceResult result = await this.m_courseService.UpdateCourseAsync(model);
            if (result == ServiceResult.Success)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View("Error");
            }
        }
        #endregion


        #region create course
        #endregion 

        #region create class
        [HttpGet]
        [Route("class/insert")]
        public async Task<ActionResult> Create()
        {
            var allCourses = await this.m_courseService.GetAllCoursesAsync();
            CreateClassViewModel model = new CreateClassViewModel(allCourses);
            return View(model);
        }

        [Route("class/insert")]
        public async Task<ActionResult> Create(CreateClassViewModel model)
        {
            // get current user id
            string userId = User.Identity.GetUserId();
            // create class
            Class c = EntityFactory.CreateClass(userId, model.ClassId,
                model.ClassName, model.Abstract, model.Image, model.CourseId, model.StartDate, model.EndDate);
            // try insert 
            var result = await this.m_courseService.CreateClassAsync(c);
            if (result == ServiceResult.Success)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
                return View();
            }
        }
        #endregion 

        #region add, delete, update a word 
        /// <summary>
        /// Add new word
        /// </summary>
        /// <param name="classId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("class={classId}/add-word")]
        public async Task<ActionResult> AddWord(string classId)
        {
            return View();
        }
        
        /// <summary>
        /// Update
        /// </summary>
        /// <param name="classId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("class={classId}/update-word/word={wordId}")]
        public async Task<ActionResult> UpdateWord(string classId, string wordId)
        {
            return View();
        }

        /// <summary>
        /// Delete word
        /// </summary>
        /// <param name="classId"></param>
        /// <param name="wordId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("class={classId}/delete-word/word={wordId}")]
        public async Task<ActionResult> DeleteWord(string classId, string wordId)
        {
            return View();
        }
        #endregion 
    }
}