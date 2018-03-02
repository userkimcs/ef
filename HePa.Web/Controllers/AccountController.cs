using System;
using System.Linq;
using System.Web.Security;
using Microsoft.AspNet.Identity;
using HePa.Service.Services;
using System.Web;
using HePa.Core.Entities;
using HePa.Core.Helpers;
using Microsoft.Owin.Security;
using System.Threading.Tasks;
using System.Security.Claims;
using System.Web.Mvc;
using Microsoft.AspNet.Identity.Owin;
using HePa.Data.Context;
using System.IO;
using Microsoft.AspNet.Identity.EntityFramework;
using HePa.Web.ViewModels.HomeViewModels;
using HePa.Web.ViewModels.AccountViewModels;
using Facebook;
using BotDetect.Web.UI.Mvc;
using HePa.Service.Services.ExperienceServices;
using HePa.Web.dist.hp.webUlti;
using HePa.Service.Services.CurrencyServices;
using System.Collections.Generic;
using HePa.Service.Services.Histories;
using HePa.Service.Services.HepaPassportServices;
using HePa.Service.Services.Users;


namespace HePa.Web.Controllers
{
    //[RouteArea("Account")]
    [Authorize]
    [RoutePrefix("user")]
    public class AccountController : Controller
    {
        // Inject base controller
        // private ApplicationSignInManager _signInManager;
        private IApplicationUserManager m_userManager;
        private ILocationService m_locationService;
        private IExperienceService m_expService;
        private ICurrencyUserManager m_currencyUserService;
        private ILearnWordResultService m_learnWordResultService;
        private IClassService m_classService;
        private IHepaPassportService m_passportService;
        private IUserService m_userService;

        public AccountController(ILocationService m_locationService,
            IExperienceService m_expService,
            ICurrencyUserManager m_currencyUserService,
            ILearnWordResultService m_learnWordResult,
            IClassService m_classService,
             IHepaPassportService m_passportService,
            IUserService m_userService)
        {
            this.m_locationService = m_locationService;
            this.m_userManager = new ApplicationUserManager(new UserStore<ApplicationUser>(DatabaseService.CreateDbContext()));
            this.m_expService = m_expService;
            this.m_currencyUserService = m_currencyUserService;
            this.m_learnWordResultService = m_learnWordResult;
            this.m_passportService = m_passportService;
            this.m_userService = m_userService;
            this.m_classService = m_classService;
        }

        [Route("")]
        public async Task<ActionResult> Index()
        {
            // Find user id
            string userId = User.Identity.GetUserId();
            // Find current user
            var user = await m_userManager.GetByUserIdAsync(userId);
            // update view data 
            ViewData["UserIndexPageTitle"] = "Thông tin người dùng";
            // get user info to model
            UserInfoViewModel model = new UserInfoViewModel(user);
            return View(model);
        }

        #region Register new User account
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        [HttpPost]
        [Route("Register")]
        public async Task<ActionResult> Register(IndexViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var user = new ApplicationUser
                    {
                        DisplayName = model.Register.DisplayName,
                        Email = model.Register.Email,
                        UserName = model.Register.Email,
                        CurrentExp = 100, // set user exp default by 100
                    };
                    // Create user
                    var result = await m_userManager.CreateUserAsync(user, model.Register.Password);
                    // Check if successfull
                    if (result == IdentityResult.Success)
                    {
                        // Login into system 
                        await SignInAsync(user, false);

                        //Add registed Successfully exp reward for user                        
                        await m_expService.AddExpForRegisterAsync(user.Id);
                        //Init currency amount
                        await m_currencyUserService.CreateAsync(EntityFactory.CreateCurrency_UserObject(user.Id, Constraint.CurrencySystem.DIAMOND));
                        await m_currencyUserService.CreateAsync(EntityFactory.CreateCurrency_UserObject(user.Id, Constraint.CurrencySystem.STARFISH));
                        await m_currencyUserService.CreateAsync(EntityFactory.CreateCurrency_UserObject(user.Id, Constraint.CurrencySystem.HEART));
                        // redirect to galaxy-gate
                        return RedirectToAction("Index", "Home", new { area = "galaxygate"});
                    }
                    else // If failure
                    {////[RequireHttps]
                        TempData["RegisterMessage"] = result.Errors.First();
                        return RedirectToAction("Index", "Home");
                    }
                }
                catch (Exception ex)
                {
                    ViewBag.ErrorMessage = ex.Message;
                    ViewBag.Exception = ex.ToString();
                    return View("Error");
                }
            }
            // If we got this far, something failed, redisplay form
            return RedirectToAction("Index", "Home");
        }
        #endregion

        #region Login with exist user
        // Post method
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        [HttpPost]
#if !DEBUG
        //[RequireHttps]
#endif
        [Route("login")]
        public async Task<ActionResult> Login(IndexViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return RedirectToAction("Index", "Home");
            }
            // Check result 
            var result = await this.m_userManager.HepaSignIn(model.Login.Email, model.Login.Password);
            if (result == IdentityResult.Success) // if successfull
            {
                // Get user 
                var user = await this.m_userManager.GetByUserEmailAsync(model.Login.Email);
                // Login
                await SignInAsync(user, model.Login.RememberMe);
                // redirect to galaxy-gate
                return RedirectToAction("Index", "Home", new { area = "galaxygate"});
            }
            else // not successfull
            {
                // string script = JSMessageHelper.Alert(result.Errors.First());
                TempData["LoginMessage"] = result.Errors.First();
                return RedirectToAction("Index", "Home");
            }
        }
        #endregion

        #region Logout system
        [Route("log-off")]
        public ActionResult LogOff()
        {
            var userId = User.Identity.GetUserId();
            FormsAuthentication.SignOut();
            Session.Abandon();
            AuthenticationManager.SignOut();
            return RedirectToAction("Index", "Home");
        }
        #endregion

        #region reset password
        // Get 
        [AllowAnonymous]
#if !DEBUG
        //[RequireHttps]
#endif
        [Route("forgot-password")]
        public ActionResult ForgotPassword()
        {
            return View();
        }
        // Post 
        // Sending email
        [HttpPost]
        [Route("forgot-password")]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ForgotPassword(ForgotPasswordViewModel model)
        {
            if (ModelState.IsValid)
            {
                // send email
                var hostname = Request.Url.GetLeftPart(UriPartial.Authority);
                IdentityResult result = await m_userManager.SendResetPasswordEmailAsync(model.Email, hostname);
                // If not success
                if (result != IdentityResult.Success)
                {
                    // get error message
                    ViewBag.SendEmailForgotPasswordError = result.Errors.First();
                    return View();
                }
                else
                {
                    //sending successfull
                    ViewBag.SendEmailForgotPasswordSuccessfully = Resource.IdentityMessages.IdentityResult.SendEmailSuccessfully;
                    return View();
                }
            }
            return View();
        }

        [AllowAnonymous]
        [HttpGet]
        [Route("~/reset-password/{userId}/{accessKey}")]
        public async Task<ActionResult> ResetPassword(string userId, string accessKey)
        {
            // get identity result 
            IdentityResult result = await this.m_userManager.ComfirmResetPasswordRequestAsync(userId, accessKey);
            // check result 
            if (result == IdentityResult.Success)
            {
                ApplicationUser user = await m_userManager.GetByUserIdAsync(userId);
                ViewBag.Email = user.Email;
                return View();
            }
            else
            {
                ViewBag.ErrorMessage = result.Errors.First();
                return View("Error");
            }
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        [AllowAnonymous]
        [Route("~/reset-password/{userId}/{accessKey}")]
        public async Task<ActionResult> ResetPassword(ResetPasswordViewModel model, string userId)
        {
            // Reset password for user
            await m_userManager.ResetPasswordAsync(userId, model.Password);
            ApplicationUser user = await this.m_userManager.GetByUserIdAsync(userId);
            await SignInAsync(user, false);
            return RedirectToAction("Index", "Home");
        }
        #endregion

        #region update user info
        [Route("edit")]
        public async Task<ActionResult> UpdateUserInfo()
        {
            string id = User.Identity.GetUserId();      //Get user id
            ApplicationUser user = await m_userManager.GetByUserIdAsync(id);  //get user information
            // var model = new EditUserViewModel().MapUserInfoToEditUserViewModel(user, null);       //Map user to user viewmodel
            UserInfoViewModel model = new UserInfoViewModel(user);
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [Route("edit")]
        public async Task<ActionResult> UpdateUserInfo(HttpPostedFileBase file, UserInfoViewModel model)
        {
            if (ModelState.IsValid)
            {
                string id = User.Identity.GetUserId();      //Get user id

                // Get user info for login 
                ApplicationUser user = await m_userManager.GetByUserIdAsync(id);
               //user = model.MapViewModelToUser(user);
                await m_userManager.UploadAvatarAsync(user);
                // update info
                var result = await m_userManager.UpdateUserAsync(user);
                if (result == IdentityResult.Success)
                {
                    ViewBag.SuccessfulMessage = "Chỉnh sửa thành công!";
                    this.LogOff();
                    await this.SignInAsync(user, false);
                }
                else
                {
                    ViewBag.EditUserError = result.Errors.First();
                }
            }
            return View();
        }
        #endregion

        #region class registration
        #endregion

        #region Update info
        /*
        // GET
        public async Task<ActionResult> UpdateInfo()
        {
            // Get current user id 
            string id = await Task.Run(() => User.Identity.GetUserId());
            // get current account info
            //Account account = await m_accountService.GetAccountByIdAsync(id);
            // var model = new UpdateAccountInfoViewModel(account);
            // Adding data into cities
            foreach (var city in m_locationService.GetCities())
            {
                model.Cities.Add(new SelectListItem { 
                    Text = city.Name,
                    Value = city.Id.ToString()
                });
            }
            //return View(model); 
            return View();
        }
        
        [HttpPost]
        public async Task<ActionResult> UpdateInfo(UpdateAccountInfoViewModel model, HttpPostedFileBase file)
        {
            try
            {
                file = file ?? Request.Files["file"];
                // get account id 
                string accountId = await Task.Run(() => User.Identity.GetUserName());
                // Get current account 
                //Account currentAccount = await m_accountService.GetAccountByIdAsync(accountId);
                // Update the basic info
                =currentAccount.BirthDay = Factory
                     .CreateDateTime(model.DayO
         * 
         * irth, model.MonthOfBirth, model.YearOfBirth);
                 currentAccount.PhoneNumber = model.PhoneNumber;
                 currentAccount.Name = model.Name;
                 currentAccount.Job = model.Job;
                 // Upload avatar 
                 if (file.ContentLength > 0)
                 {
                     var fileName = HePa.Core
                         .Security.Crypto.Encode(currentAccount.Email + currentAccount.Id) + ".png";
                     var path = Path.Combine(Server.MapPath("~/App_Data/upload/avt"), fileName);
                     file.SaveAs(path);
                     currentAccount.Avatar = fileName;
                 }
                 await this.m_accountService.UpdateAccountAsync(currentAccount);
                return View("Index", "Account");
            }
            catch
            {
                return View("Error");
            }
        }
        */
        // Get list district, town by using ajax 
        // Get list districts
#if !DEBUG
        //[RequireHttps]
#endif
        [HttpGet]
        public async Task<ActionResult> GetDistrictsByCityId(string cityId)
        {
            if (String.IsNullOrEmpty(cityId))
            {
                throw new ArgumentNullException("cityId");
            }
            string id = cityId;
            var districts = await m_locationService.GetDistrictsByCityIdAsync(id);
            districts.Insert(0, new District { Name = Resource.Display.Resource.DisplayDistrict, Id = null });
            var result = (from s in districts
                          select new
                          {
                              id = s.Id,
                              name = s.Name
                          }).ToList();
            return Json(result, JsonRequestBehavior.AllowGet);
        }
        // Get list Towns
        [HttpGet]
        public async Task<ActionResult> GetTownsByDistrictId(string districtId)
        {
            if (String.IsNullOrEmpty(districtId))
            {
                throw new ArgumentNullException("districtId");
            }
            string id = districtId;
            var towns = await m_locationService.GetTownsByDistrictIdAsync(id);
            towns.Insert(0, new Town { Name = Resource.Display.Resource.DisplayTown });
            var result = (from s in towns
                          select new
                          {
                              id = s.Id,
                              name = s.Name
                          }).ToList();
            return Json(result, JsonRequestBehavior.AllowGet);
        }
        #endregion
        #region social login
        [AllowAnonymous]
        [Route("external-login")]
        public ActionResult ExternalLogin(string provider)
        {
            Session["dummy"] = true;
            var challenge = new ChallengeResult(provider, Url.Action("ExternalLoginCallback", "Account", null));
            // Request a redirect to the external login provider
            return challenge;
        }

        [AllowAnonymous]
        [Route("external-login-call-back")]
        public async Task<ActionResult> ExternalLoginCallback()
        {
            // get login info
            var loginInfo = await AuthenticationManager.GetExternalLoginInfoAsync();
            // if notfound info, return index
            if (loginInfo == null)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
                // Sign in the user with this external login provider if the user already has a login
                var user = await m_userManager.GetExternalUser(loginInfo.Email, loginInfo.Login.LoginProvider);
                if (user != null)
                {
                    // login 
                    await this.SignInAsync(user, false);
                    // redirect to galaxy-gate
                    return RedirectToAction("Index", "Home", new { area = "galaxygate"});
                }
                else
                {
                    // If the user does not have an account, then prompt the user to create an account
                    // Basic info based on email and username in social networks 
                    // Get login info
                    ExternalRegisterViewModel model =
                        new ExternalRegisterViewModel(loginInfo.ExternalIdentity.Name, // Default display name
                                                    loginInfo.Email, // External email address
                                                    loginInfo.Login.LoginProvider); // Login provider (facebook, google,...)
                    // Return to confirm page
                    return RedirectToAction("ExternalLoginConfirmation", "Account", model);
                }
            }
            // Create signin manager 
        }
        [AllowAnonymous]
        [HttpGet]
        [Route("external-login-confirmation")]
        public ActionResult ExternalLoginConfirmation(ExternalRegisterViewModel model)
        {
            return View(model);
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        [Route("external-login-confirmation")]
        public async Task<ActionResult> ExternalLoginConfirmation(ExternalRegisterViewModel model, int n)
        {
            if (ModelState.IsValid)
            {
                // Register 
                IdentityResult result = await m_userManager.ExternalRegister(model.DisplayName, model.Email, model.Provider);
                // Checking result
                if (result.Succeeded)
                {
                    // Find user 
                    var user = await m_userManager.GetExternalUser(model.Email, model.Provider);
                    // login 
                    await this.SignInAsync(user, false);
                    // create exp
                    //Add registed Successfully exp reward for user                        
                    await m_expService.AddExpForRegisterAsync(user.Id);
                    //Init currency amount
                    await m_currencyUserService.CreateAsync(EntityFactory.CreateCurrency_UserObject(user.Id, Constraint.CurrencySystem.DIAMOND));
                    await m_currencyUserService.CreateAsync(EntityFactory.CreateCurrency_UserObject(user.Id, Constraint.CurrencySystem.STARFISH));
                    await m_currencyUserService.CreateAsync(EntityFactory.CreateCurrency_UserObject(user.Id, Constraint.CurrencySystem.HEART));
                    // success
                    // redirect to galasy gate
                    return RedirectToAction("Index", "Home", new { area = "galaxygate"});
                }
                else // failure
                {
                    ViewBag.ErrorMessage = result.Errors.First();
                    return View("Error");
                }
            }
            return View();
        }
        #endregion

        #region Helpers
        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";
        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }

        private async Task SignInAsync(ApplicationUser user, bool isPersistent)
        {
            AuthenticationManager.SignOut(DefaultAuthenticationTypes.ExternalCookie);
            // Add claim
            var identity = await this.m_userManager.CreateUserIdentityAsync(user, DefaultAuthenticationTypes.ApplicationCookie);
            identity.AddClaim(new Claim("DisplayName", user.DisplayName));
            identity.AddClaim(new Claim("Name", user.Name == null ? "" : user.Name));
            identity.AddClaim(new Claim("Email", user.Email));
            identity.AddClaim(new Claim("PhoneNumber", user.PhoneNumber == null ? "" : user.PhoneNumber));
            // add paid 
            identity.AddClaim(new Claim("IsPaid", user.IsPaid.ToString()));
            // this.m_userManager.AddDisplayNameClaimAsync(user);
            AuthenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = isPersistent, AllowRefresh = false }, identity);
            // await user.GenerateUserIdentityAsync(this.m_userManager.GetThis()));
        }
        internal class ChallengeResult : HttpUnauthorizedResult
        {
            public ChallengeResult(string provider, string redirectUri)
                : this(provider, redirectUri, null)
            {
            }

            public ChallengeResult(string provider, string redirectUri, string userId)
            {
                LoginProvider = provider;
                RedirectUri = redirectUri;
                UserId = userId;
            }
            public string LoginProvider { get; set; }
            public string RedirectUri { get; set; }
            public string UserId { get; set; }
            public override void ExecuteResult(ControllerContext context)
            {
                var properties = new AuthenticationProperties { RedirectUri = RedirectUri };
                if (UserId != null)
                {
                    properties.Dictionary[XsrfKey] = UserId;
                }
                context.HttpContext.GetOwinContext().Authentication.Challenge(properties, LoginProvider);
            }
        }


        #endregion

        #region Change user password
        [ValidateAntiForgeryToken]
        [AllowAnonymous]
        [HttpPost]
#if !DEBUG
        //[RequireHttps]
#endif
        [Route("change-password")]
        public async Task<ActionResult> ChangePassword(ChangePasswordViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var userid = User.Identity.GetUserId();
                    var result = await m_userManager.ChangeUserPasswordAsync(userid, model.CurrentPassword, model.NewPassword);
                    if (result.Succeeded)
                    {
                        ViewBag.SuccessfulMessage = "Đổi mật khẩu thành công";
                        return View();
                    }
                    else
                    {
                        ViewBag.FailureMessage = "Mật khẩu không đúng";
                        return View();
                    }
                }
                catch (Exception ex)
                {
                    ViewBag.ErrorMessage = ex.Message;
                    ViewBag.Exception = ex.ToString();
                    return View("Error");
                }
            }
            // If we got this far, something failed, redisplay form
            return View(model);
        }
        [Route("change-password")]
        [AllowAnonymous]
        public ActionResult ChangePassword()
        {
            return View();
        }
        #endregion

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (m_userManager != null)
                {
                    m_userManager.Dispose();
                    m_userManager = null;
                }
            }

            base.Dispose(disposing);
        }

        #region Loading by ajax call
        // get list history and render partial view
        [Route("exp-history")]
        public async Task<ActionResult> GetListExperiences()
        {
            // get user id 
            string userId = User.Identity.GetUserId();
            // Get list exp history of user 
            IList<UserExperience> exps = await this.m_expService.GetExperienceHistoryAsync(userId, 1, 1000);
            // update view data 
            ViewData["UserIndexPageTitle"] = "Lịch sử học từ";
            return PartialView("_ListExperiencePartial", exps);
        }
        // get list joined classes 
        [Route("joined-classes")]
        public async Task<ActionResult> GetListJoinedClasses()
        {
            // get user id 
            string userId = User.Identity.GetUserId();
            // get list of class
            IList<UserGoal> classes = await this.m_classService
                                            .GetUserRegistedClassedGoalAsync(userId);
            // update view data 
            ViewData["UserIndexPageTitle"] = "Danh sách lớp học";
            // update view
            return PartialView("_ListJoinedClassPartial", classes);
        }
        // get list history of class 
        [Route("user/history/joined-classes/classid")]
        [HttpGet]
        public async Task<ActionResult> GetHistoryFromClass(string classId)
        {
            // get user id 
            string userId = User.Identity.GetUserId();
            // get list history
            IList<LearnWordHistory> history = await this.m_learnWordResultService
                                                .GetLearningWordHistoryAsync(userId, classId, 1, 1000);
            // update view data 
            ViewData["UserIndexPageTitle"] = "Thông tin người dùng";
            // update view
            return PartialView("_ListLearnWordHistoryPartial", history);
        }
        [Route("user/info")]
        public async Task<ActionResult> GetUserInfo()
        {
            string userId = User.Identity.GetUserId();
            var user = await m_userManager.GetByUserIdAsync(userId);
            // update view data 
            ViewData["UserIndexPageTitle"] = "Thông tin người dùng";
            // get user info to model
            UserInfoViewModel model = new UserInfoViewModel(user);
            return PartialView("_UserInfoPartial", model);
        }

        [Route("active-history")]
        public async Task<ActionResult> GetActiveHistory()
        {
            string userId = User.Identity.GetUserId();
            //Check user release date before learn (check in LearnWordController action Lecture and in AccountController action GetActiveHistory)
            await m_userService.CheckUserReleaseAsync(userId);
            var expDays = await m_userService.CalculateExpDaysAsync(userId);
            var expDate = await m_userService.ShowExpDateAsync(userId);
            IList<HepaPassport> passports = await m_passportService.GetUserActiveCodesAsync(User.Identity.GetUserId());
            var model = new ActiveHistoryViewModel(passports, expDays, expDate);
            ViewData["UserIndexPageTitle"] = "Lịch sử kích hoạt thẻ";
            return PartialView("_GetActiveHistoryPartial", model);
        }
        #endregion

    }
}