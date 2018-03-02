using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Service.Services.PromotionEvents;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.Areas.Admin.Controllers
{
    [RouteArea("assmin")]
    [RoutePrefix("promotion-event")]
    [Authorize(Roles = "Admin")]
    public class PromotionEventAdminController : Controller
    {
        IPromotionEventManager m_promotionEventManager;
        public PromotionEventAdminController(IPromotionEventManager m_promotionEventManager)
        {
            this.m_promotionEventManager = m_promotionEventManager;
        }

        [Route("")]
        public ActionResult Index()
        {
            var model = m_promotionEventManager.GetAllPromotionEvents();
            return View(model);
        }

        [Route("create")]
        public ActionResult Create()
        {
            return View();
        }

        [Route("create")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(PromotionEvent pe)
        {
            if (ModelState.IsValid)
            {
                pe.Id = Guid.NewGuid().ToString();
                var result = await m_promotionEventManager.AddAsync(pe);
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

        [Route("delete/{id}")]
        public async Task<ActionResult> Delete(string id)
        {
            var model = await m_promotionEventManager.GetPromotionEventByIdAsync(id);
            return View(model);
        }

        [Route("delete/{id}")]
        [HttpPost]
        public async Task<ActionResult> Delete(PromotionEvent pe)
        {
            var result = await m_promotionEventManager.DeleteAsync(pe.Id);
            return RedirectToAction("Index", "PromotionEventAdmin");
        }

        [Route("edit/{id}")]
        [HttpGet]
        public async Task<ActionResult> Edit(string id)
        {
            var model = await m_promotionEventManager.GetPromotionEventByIdAsync(id);
            return View(model);
        }

        [Route("edit/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(PromotionEvent pe)
        {
            if (ModelState.IsValid)
            {
                var model = await m_promotionEventManager.UpdateAsync(pe);
            }
            return RedirectToAction("Index", "PromotionEventAdmin");
        }
    }
}