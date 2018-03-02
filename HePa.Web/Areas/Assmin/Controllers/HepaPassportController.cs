using HePa.Core.Helpers;
using HePa.Service.Services.HepaPassportServices;
using HePa.Web.Areas.Admin.ViewModels.HepaPassportAdminViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.Areas.Admin.Controllers
{
    [RouteArea("assmin")]
    [RoutePrefix("passport")]
    [Authorize(Roles = "Admin")]
    public class HepaPassportController : Controller
    {
        private IHepaPassportService passportService;
        public HepaPassportController(IHepaPassportService passportService)
        {
            this.passportService = passportService;
        }

        [Route("index")]
        [Route("")]
        public async Task<ActionResult> Index()
        {
            var passports = await passportService.GetAllAsync();
            IList<HepaPassportViewModel> model = new List<HepaPassportViewModel>();
            foreach (var p in passports)
            {
                HepaPassportViewModel tmp = new HepaPassportViewModel(p.Id, p.Code, p.ExpiryDate, p.CreateDate, p.UserId, p.ActiveDate);
                model.Add(tmp);

            }
            return View(model);
        }

        [Route("them")]
        public ActionResult Insert()
        {
            return View();
        }

        [Route("them")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Insert(HepaPassportInsertViewModel model)
        {
            var result = await passportService.InsertAsync(model.PassportCode, model.ExpiryDate);
            if (result == ServiceResult.Success)
            {
                ViewData["Success"] = "Thêm thành công";
            }
            else {
                ViewData["Error"] = result.Error;
            }
            return View();
        }

        [Route("them-nhieu")]
        public ActionResult Inserts()
        {
            return View();
        }

        [Route("them-nhieu")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Inserts(HepaPassportInsertsViewModel model)
        {
            var result = await passportService.InsertAsync(model.StartNumber, model.EndNumber, model.ExpiryDate);
            if (result == ServiceResult.Success)
            {
                ViewData["Success"] = "Thêm thành công";
            }
            else
            {
                ViewData["Error"] = result.Error;
            }
            return View();
        }

        [Route("xoa")]
        public ActionResult Delete()
        {    
            return View();
        } 

        [Route("xoa")]
        [HttpPost]
        public async Task<ActionResult> Delete(HepaPassportDeleteViewModel model)
        {
            var deleteItem = await passportService.GetByIdAsync(model.PassportCode);
            if (deleteItem != null)
            {
                var result = await passportService.DeleteAsync(deleteItem);
                if (result == ServiceResult.Success)
                {
                    ViewData["Success"] = "Xóa thành công";
                }
                else
                {
                    ViewData["Error"] = result.Error;
                }
            }
            else
            {
                ViewData["Error"] = "Mã thẻ sai!";
            }
            return View();
        }

        [Route("sua/{id}")]
        [HttpGet]
        public async Task<ActionResult> Edit(string id)
        {
            var passport = await passportService.GetByIdAsync(id);
            if (passport != null)
            {
                HepaPassportEditViewModel model = new HepaPassportEditViewModel(passport.Id, passport.ExpiryDate, passport.Code);
                return View(model);
            }
            return View();
        }

        [Route("sua/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(HepaPassportEditViewModel model)
        {
            if (ModelState.IsValid)
            {
                var passport = await passportService.GetByIdAsync(model.PassportCode);
                if (passport != null)
                {
                    passport.ExpiryDate = model.Expirydate;
                    passport.Code = model.ActiveCode;
                    await passportService.UpdateAsync(passport);
                }

            }
            return View();
        }
	}
}