using System.Web.Mvc;
using System.Threading.Tasks;
using HePa.Web.ViewModels.Order;
using HePa.Service.Services;
using HePa.Core.Entities;
using Microsoft.AspNet.Identity;
using System;
using HePa.Core.Helpers;
using HePa.Service.Services.PromotionEvents;
using HePa.Service.Services.CouponCodes;
using HePa.Service.Services.HepaPassportServices;
using HePa.Service.Services.Users;


namespace HePa.Web.Controllers
{
#if !DEBUG
        //[RequireHttps]
#endif
    public class OrderController : Controller
    {
        // properties 
        private IOrderService m_orderService;
        private IPromotionEventManager m_promotionEventManager;
        private ICouponCodeManager m_couponCodeManager;
        private IHepaPassportService m_passportService;
        private IUserService m_userService;
        // ctor
        public OrderController(IOrderService m_orderService, IPromotionEventManager m_promotionEventManager, ICouponCodeManager m_couponCodeManager,
            IHepaPassportService m_passportService, IUserService m_userService)
        {
            this.m_orderService = m_orderService;
            this.m_promotionEventManager = m_promotionEventManager;
            this.m_couponCodeManager = m_couponCodeManager;
            this.m_passportService = m_passportService;
            this.m_userService = m_userService;
        }
        // GET: Order
        public ActionResult Index()
        {
            return View();
        }

        #region PreOrder
        [Route("mua-the-tu-vung-hepa-passport")]
        public async Task<ActionResult> order()
        {
            var products = await m_orderService.GetProductsAsync();
            // Loading to model
            PurchaseViewModel model = new PurchaseViewModel(products);
            //////////
            //
            // If User logined, update his/her info to model to fill default value
            //
            //////////
            if (User.Identity.IsAuthenticated)
            {
                // Get current account
                string accountId = User.Identity.GetUserId();
                // Account account = m_accountService.GetAccountByEmail(accountId);
                // Filling form 
                //model.Customer.Address = account.Place;
                //model.Customer.Email = account.Email;
                //model.Customer.FullName = account.Name;
                //model.Customer.PhoneNumber = account.PhoneNumber;
            }
            TempData["model"] = model;
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [Route("mua-the-hepa-passport")]
        public async Task<ActionResult> Order(PurchaseViewModel purchaseModel)
        {
            // Insert new Customer into databse
            Customer customer = EntityFactory.CreateCustomer(purchaseModel.Customer.FullName, purchaseModel.Customer.Email, purchaseModel.Customer.PhoneNumber, purchaseModel.Customer.Address);
            var result1 = await this.m_orderService.AddCustomerAsync(customer);

            var products = await m_orderService.GetProductsAsync();
            // Loading to model
            PurchaseViewModel model = new PurchaseViewModel(products);

            if (ModelState.IsValid)
            {

                //Change PurchaseViewModel to OrderDetailModel
                var orderDetail = purchaseModel.MapToOrderDetail();

                var counpond = await m_couponCodeManager.GetCouponCodeByIdAsync(orderDetail.CouponCodeId);      // Check if coupon code is existed
                var result = ServiceResult.Success;

                if (counpond == null)
                {
                    //Add OrderDetail to Cart
                    result = await m_orderService.AddToCartAsync(customer.Id, orderDetail.HepaProductId,
                                    orderDetail.NumberOfItems, null, orderDetail.KindOfPurchase);
                }
                else
                {
                    //Add OrderDetail to Cart
                    if (counpond.SaleOffAmount > 0)
                    {
                        result = await m_orderService.AddToCartAsync(customer.Id, orderDetail.HepaProductId,
                        orderDetail.NumberOfItems, orderDetail.CouponCodeId, orderDetail.KindOfPurchase);
                        await m_couponCodeManager.DecreasingUsageAmountAsync(orderDetail.CouponCodeId);
                    }
                    else
                    {
                        result = await m_orderService.AddToCartAsync(customer.Id, orderDetail.HepaProductId,
                                        orderDetail.NumberOfItems, null, orderDetail.KindOfPurchase);
                    }
                }

                if (result == ServiceResult.Success)
                {
                    TempData["SuccessfulMessage"] = "Bạn đã đặt hàng thành công!";
                    return RedirectToAction("Order", "Order");
                }
                else
                {
                    ViewBag.OrderErrorMessage = result.Error;
                    return View(model);
                }
            }
            return View(model);
        }
        #endregion

        #region check coupon code
        [HttpPost]
        [Route("checkCoupondCode")]
        public async Task<ActionResult> CheckCoupondCode(string code)
        {
            var coupond = await m_couponCodeManager.GetCouponCodeByIdAsync(code);
            double[] data = new double[] { 0, 0, 0 };
            if (coupond != null)
            {
                data = new double[] { coupond.Type, coupond.SaleOffAmount, coupond.UsageAmount };
            }
            return Json(data, JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region load events
        [HttpPost]
        [Route("loadevent")]
        public async Task<ActionResult> LoadUnexpiredEvent()
        {
            var promotionEvents = await m_promotionEventManager.GetUnexpiredPromotionEventsAsync();
            return Json(promotionEvents, JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region kich hoat the
        [Route("active")]
        public async Task<ActionResult> ActivePassportCode()
        {
            var userId = User.Identity.GetUserId();
            if (!String.IsNullOrEmpty(userId))
            {
                bool isBlocked = await m_userService.IsBlocked(userId);
                if (isBlocked == true)
                {
                    Session["isBlocked"] = "true";
                }
            }
            return View();
        }

        [Route("active")]
        [HttpPost]
        public async Task<ActionResult> ActivePassportCode(PassportViewModel model)
        {
            string userId = User.Identity.GetUserId();
            string passportCode = model.PassportCode;
            string activeCode = model.ActiveCode;
            if (userId == null || String.IsNullOrWhiteSpace(model.ActiveCode) || String.IsNullOrWhiteSpace(model.PassportCode))
            {
                ViewData["Error"] = "Mã thẻ hoặc mã kích hoạt không chính xác";
            }
            else
            {

                bool isBlocked = await m_userService.IsBlocked(userId);
                if (isBlocked == true)
                {
                    Session["isBlocked"] = "true";
                }
                else
                {
                    var result = await m_passportService.ActiveAsync(userId, activeCode, passportCode);
                    if (result == ServiceResult.Success)
                    {
                        ViewData["Success"] = "Chúc mừng! Bạn vừa kích hoạt thẻ thành công và trở thành công dân của Hepatown!";
                    }
                    else
                    {
                        ViewData["Error"] = result.Error;
                    }
                }
            }
            return View();
        }

        #endregion
    }
}