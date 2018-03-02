using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.Controllers
{
   
    public class ErrorController : Controller
    {
        //
        // GET: /Error/
        [Route("error/{statuscode?}")]
        public ActionResult Index(string statuscode)
        {
            if (statuscode == "404")
            {
                TempData["StatusCode"] = statuscode;
                TempData["ErrorMessage"] = "Bạn nhập sai đường dẫn." + "Error code = " + statuscode;
            }
            else if (statuscode == "503")
            {
                TempData["StatusCode"] = statuscode;
                TempData["ErrorMessage"] = "Bạn chưa đủ quyền lực để thực hiện chức năng này." + "Error code = " + statuscode;
            }
            else
            {
                TempData["StatusCode"] = statuscode;
                TempData["ErrorMessage"] = "Kiểm tra lại Http của bạn." + "Error code = " + statuscode;
            }
            return RedirectToAction("ErrorPage", "Error");
        }

        [Route("errorpage")]
        public ActionResult ErrorPage(string statuscode)
        {         
            return View();
        }
	}
}