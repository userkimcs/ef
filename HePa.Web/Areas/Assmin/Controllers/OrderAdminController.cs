using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using HePa.Core.Entities;
using HePa.Service.Services;
using HePa.Data.Context;
using System.Threading.Tasks;
using HePa.Core.Helpers;
namespace HePa.Web.Areas.Admin.Controllers
{

    [RouteArea("assmin")]
    [Authorize(Roles = "Admin")]
    public class OrderAdminController : Controller
    {        
        IOrderAdminManager m_orderDetail;
        public OrderAdminController(IOrderAdminManager m_orderDetail)
        {
            this.m_orderDetail = m_orderDetail;
        }

        [Route("order/{date?}")]
        public async Task<ActionResult> Index(string date)
        {
            if (String.IsNullOrEmpty(date))
            {
                var model = await m_orderDetail.GetOrderDetailsAsync();
                return View(model);
            }
            else
            {
                var arr = date.Split('-');
                var date1 = Factory.CreateDateTime(arr[0], arr[1], arr[2]);
                var model = await m_orderDetail.GetOrderDetailsByDateAsync(date1);
                return View(model);
            }
        }

        [Route("order/full/{date?}")]
        public async Task<ActionResult> FullOrderDetails(string date)
        {
            if (String.IsNullOrEmpty(date))
            {
                var model = await m_orderDetail.GetOrderDetailsAsync();
                return View(model);
            }
            else
            {
                var arr = date.Split('-');
                var date1 = Factory.CreateDateTime(arr[0], arr[1], arr[2]);
                var model = await m_orderDetail.GetOrderDetailsByDateAsync(date1);
                return View(model);
            }
        }

    }
}