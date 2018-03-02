using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.Controllers
{
    [Authorize]
    public class HepaPassport_UserController : Controller
    {
        //
        // GET: /HepaPassport_User/
        [Route("key/home")]
        public ActionResult Index()
        {
            return View();
        }

        [Route("input-key")]
        [HttpGet]
        public ActionResult InputKey()
        {
            return View();
        }

        [Route("input-key")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult InputKey(string key)
        {
            // var userId = "80ddd2e4-b7ee-4bf1-aaae-88b6d29d75da";
            return View();
        }
	}
}