using HePa.Core.Helpers;
using HePa.Web.ViewModels.AccountViewModels;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using HePa.Service.Services;
using System.Threading.Tasks;
using HePa.Web.ViewModels.HomeViewModels;
using HePa.Resource.Email;
using System.Linq;
using System.Text;
using HePa.Service.Services.Feedbacks;

namespace HePa.Web.Controllers
{
    public class HomeController : BaseController
    {
        private ICourseService m_courseService;
        private IFeedbackService m_feedbackService;
        public HomeController(ICourseService m_courseService, IFeedbackService m_feedbackService)
        {
            this.m_courseService = m_courseService;
            this.m_feedbackService = m_feedbackService;
        }

#if !DEBUG
        //[RequireHttps]
#endif
        //[Route("")]
        //public async Task<ActionResult> Index()
        //{
        //    // if user is authenticated 
        //    if (User.Identity.IsAuthenticated == true)
        //    {
        //        // redirect to galaxt gate 
        //        return RedirectToAction("Index", "Home", new { area = "galaxygate" });
        //    }
        //    else
        //    {
        //        IndexViewModel model = new IndexViewModel();
        //        model.Login.RememberMe = true;
        //        return View(model);
        //    }
        //}

        [Route("")]
        public ActionResult Index()
        {
            return View();
        }

        [Route("gioi-thieu-thi-tran-hepa-town.html")]
        public ActionResult About()
        {
            return View();
        }

        public ActionResult SetCulture(string culture)
        {
            // Validate input
            culture = CultureHelper.GetImplementedCulture(culture);
            RouteData.Values["culture"] = culture;  // set culture
            return RedirectToAction("Index");
        }

        //
        // GET: /faq
#if !DEBUG
        //[RequireHttps]
#endif
        [Route("tro-giup.html")]
        [AllowAnonymous]
        public ActionResult Faq()
        {
            ViewModels.HomeViewModels.FaqViewModel faq = new ViewModels.HomeViewModels.FaqViewModel();
            faq = new ViewModels.HomeViewModels.FaqViewModel();
            return View(faq);
        }

        //
        // POST: /faq
#if !DEBUG
        //[RequireHttps]
#endif
        [Route("goi-tro-giup")]
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> SendFaq(ViewModels.HomeViewModels.FaqViewModel model)
        {
            if (ModelState.IsValid)
            {
                // create contact
                var contact = new CustomerInfoFaq();
                contact.FullName = model.Contact.FullName;
                contact.Email = model.Contact.Email;
                contact.PhoneNumber = model.Contact.PhoneNumber;

                // create faq
                var faq = new FaqViewModel();
                faq.Contact = contact;
                faq.OptionVal = model.OptionVal;
                faq.Message = model.Message.Replace("\r\n", "<br>");

                var selectedOption = faq.OptionType.Where(t => t.Value == faq.OptionVal.ToString()).FirstOrDefault().Text;
                var URL = Request.Url.AbsoluteUri;
                var time = DateTime.Now;

                string EmailTitle = "FAQ - " + contact.FullName + " - " + selectedOption;
                StringBuilder EmailMessage = new StringBuilder();
                EmailMessage.Append("<h3>Thư của người dùng gửi từ trang FAQ với</h3>");
                EmailMessage.Append("<br>");
                EmailMessage.AppendFormat("<strong>URL:</strong> {0}", URL);
                EmailMessage.Append("<br>");
                EmailMessage.AppendFormat("<strong>Họ và tên:</strong> {0}", contact.FullName);
                EmailMessage.Append("<br>");
                EmailMessage.AppendFormat("<strong>Phone:</strong> {0}", contact.PhoneNumber);
                EmailMessage.Append("<br>");
                EmailMessage.AppendFormat("<strong>Email:</strong> {0}", contact.Email);
                EmailMessage.Append("<br>");
                EmailMessage.AppendFormat("<strong>Vào lúc:</strong> {0}", time);
                EmailMessage.Append("<br>");
                EmailMessage.AppendFormat("<strong>Về vấn đề:</strong> {0}", selectedOption);
                EmailMessage.Append("<br>-----------<br>");
                EmailMessage.Append(faq.Message);

                try
                {
                    // insert: Feedbacks 
                    ServiceResult result = await this.m_feedbackService.PostFeedbackAsync(contact.FullName,
                        contact.Email, contact.PhoneNumber, selectedOption, URL, model.Message, time);

                    // send email
                    bool success = await EmailHelper.SendEmailAsync("🚩 " + contact.FullName, EmailAddress.ContactHepa, EmailTitle, EmailMessage.ToString());

                    // sending successfull
                    if (success)
                    {
                        ViewBag.SendEmailSuccessfully = EmailResult.SendFromFaq_Successful;
                    }
                }
                catch (Exception ex)
                {
                    ViewBag.SendEmailFalse = EmailResult.SendFromFaq_False;
                    ViewBag.SendEmailFalseDetail = ex.Message;
                }
            }

            // If we got this far, something failed, redisplay View
            return RedirectToAction("Faq", "Home");
        }

        [Route("about-team.html")]
        [AllowAnonymous]
        public ActionResult Team()
        {
            return View();
        }

        [Route("tos.html")]
        [AllowAnonymous]
        public ActionResult Tos()
        {
            return View();
        }

        [Route("gioi-thieu-trung-tam-ngoai-ngu-hepa-town.html")]
        [AllowAnonymous]
        public ActionResult Aboutv1_1()
        {
            return View();
        }

        [Route("hoc-phi-tieng-anh-2016.html")]
        [AllowAnonymous]
        public ActionResult HocPhi()
        {
            return View();
        }

        [Route("lich-khai-giang.html")]
        [AllowAnonymous]
        public ActionResult LichKhaiGiang()
        {
            return View();
        }

        [Route("lo-trinh-hoc.html")]
        [AllowAnonymous]
        public ActionResult LoTrinhHoc()
        {
            return View();
        }

        [Route("about-team-v1.1.html")]
        [AllowAnonymous]
        public ActionResult Teamv1_1()
        {
            return View();
        }

        [Route("tro-giup-v1.1.html")]
        [AllowAnonymous]
        public ActionResult Faqv1_1()
        {
            ViewModels.HomeViewModels.FaqViewModel faq = new ViewModels.HomeViewModels.FaqViewModel();
            faq = new ViewModels.HomeViewModels.FaqViewModel();
            return View(faq);
        }

        [Route("tos-v1.1.html")]
        [AllowAnonymous]
        public ActionResult Tosv1_1()
        {
            return View();
        }
    }
}