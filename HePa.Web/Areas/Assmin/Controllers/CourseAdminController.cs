using HePa.Service.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.Areas.Admin.Controllers
{
    [RouteArea("assmin")]
    [Authorize(Roles = "Admin")]
    public class CourseAdminController : Controller
    {
        private ICourseService m_courseService;
        public CourseAdminController(ICourseService m_courseService)
        {
            this.m_courseService = m_courseService;
        }

        #region create course 
        [HttpGet]
        [Route("course/create")]
        public ActionResult Create()
        {
            return View();
        }
        #endregion 
        #region Update course
        [HttpGet]
        [Route("course/edit/course={courseId}")]
        public async Task<ActionResult> Update(string courseId)
        {
            return View();
        }
        #endregion 
    }
}