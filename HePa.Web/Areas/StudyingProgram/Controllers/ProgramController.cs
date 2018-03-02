using HePa.Service.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.Areas.StudyingProgram.Controllers
{
    public class ProgramController : Controller
    {
        private ICourseService m_courseService;
        public ProgramController(ICourseService m_courseService)
        {
            this.m_courseService = m_courseService;
        }

        [Route("galaxy-gate/courses")]
        public async Task<ActionResult> Index()
        {
            var model = await m_courseService.GetAllCoursesAsync();
            return View(model);
        }
	}
}