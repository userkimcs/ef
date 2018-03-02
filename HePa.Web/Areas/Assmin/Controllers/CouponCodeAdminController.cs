using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Service.Services.CouponCodes;
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
    public class CouponCodeAdminController : Controller
    {
        ICouponCodeManager m_couponCodeManager;
        public CouponCodeAdminController(ICouponCodeManager m_couponCodeManager)
        {
            this.m_couponCodeManager = m_couponCodeManager;
        }

        [Route("cp")]
        public async Task<ActionResult> Index()
        {
            var model = await m_couponCodeManager.GetAllCouponCodesAsync();
            return View(model);
        }

        [Route("cp/create")]
        public ActionResult Create()
        {
            return View();
        }

        [Route("cp/create")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(CouponCode cp)
        {
            if (ModelState.IsValid)
            {
                var result = await m_couponCodeManager.AddAsync(cp);
                if (result == ServiceResult.Success)
                {
                    ViewBag.SuccessfulMessage = "Thêm thành công";
                }
                else
                {
                    ViewBag.ErrorMessage = "Lỗi";
                }
            }
            return View();
        }

        [Route("cp/delete/{id}")]
        public async Task<ActionResult> Delete(string id)
        {
            var model = await m_couponCodeManager.GetCouponCodeByIdAsync(id);
            return View(model);
        }

        [Route("cp/delete/{id}")]
        [HttpPost]
        public async Task<ActionResult> Delete(CouponCode cp)
        {
            var result = await m_couponCodeManager.DeleteAsync(cp);
            return RedirectToAction("Index", "CouponCodeAdmin");
        }

        [Route("cp/edit/{id}")]
        [HttpGet]
        public async Task<ActionResult> Edit(string id)
        {
            var model = await m_couponCodeManager.GetCouponCodeByIdAsync(id);
            return View(model);
        }

        [Route("cp/edit/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(CouponCode cp)
        {
            if (ModelState.IsValid)
            {
                var model = await m_couponCodeManager.UpdateAsync(cp);
            }
            return RedirectToAction("Index", "CouponCodeAdmin");
        }
	}
}