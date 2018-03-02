using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Service.Services.Users;
using HePa.Web.Areas.Admin.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.Areas.Admin.Controllers
{
    [RouteArea("assmin")]
    [RoutePrefix("user")]
    [Authorize(Roles = "Admin")]
    public class UserAdminController : Controller
    {
        private IUserService m_userService;
        public UserAdminController(IUserService m_userService)
        {
            this.m_userService = m_userService;
        }
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        [Route("index")]
        [Route("")]
        public async Task<ActionResult> UserList()
        {
            IList<ApplicationUser> users = await m_userService.GetAllUsersAsync();
            List<UserViewModel> model = new ListUsersViewModel().MapFormApplicationUser(users);
            return View(model);
        }

        [HttpGet]
        [Route("detail/{id}")]
        public async Task<ActionResult> UserDetail(string id)
        {
            ApplicationUser user = await m_userService.GetUsersByIdAsync(id);
            return View(user);
        }

        [HttpGet]
        [Route("edit/{id}")]
        public async Task<ActionResult> UserEdit(string id)
        {
            ApplicationUser user = await m_userService.GetUsersByIdAsync(id);
            return View(user);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [Route("edit/{id}")]
        public async Task<ActionResult> UserEdit(ApplicationUser u)
        {
            if (ModelState.IsValid)
            {
                var user = await m_userService.GetUsersByIdAsync(u.Id);
                if (user != null)
                {
                    user.IsBlocked = u.IsBlocked;
                    user.IsBanned = u.IsBanned;
                    user.Email = u.Email;
                    user.Role = u.Role;
                    user.IsVerified = u.IsVerified;
                    user.IsPaid = u.IsPaid;
                    user.Name = u.Name;
                    user.BirthDay = u.BirthDay;
                    user.Job = u.Job;
                    user.Place = u.Place;
                    user.DisplayName = u.DisplayName;
                    user.Avatar = u.Avatar;
                    var result = await m_userService.UpdateAsync(user);
                    if (result == ServiceResult.Success)
                    {
                        ViewBag.SuccessMessage = "Chỉnh sửa thành công!";
                    }
                    else
                    {
                        ViewBag.EditUserError = result.Error;
                    }
                }
              
            }
            return View();
        }

        
	}
}