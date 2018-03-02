

using HePa.Service.Services;
using System.Web.Mvc;
using HePa.Core.Entities;
using System.Collections.Generic;
using HePa.Core.Helpers;
using Microsoft.AspNet.Identity;
using System;
using System.Threading.Tasks;
namespace HePa.Web.Controllers
{
    public class MyClassController : BaseController
    {
        private IOrderService m_orderService;
        public MyClassController(IOrderService m_orderService)
        {
            this.m_orderService = m_orderService;
        }

        // GET: MyClass
        public ActionResult Index()
        {
            return View();
        }
    }


}