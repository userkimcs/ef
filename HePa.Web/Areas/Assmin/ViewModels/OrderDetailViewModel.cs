using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace HePa.Web.Areas.Admin.ViewModels
{
    public class OrderDetailViewModel
    {
        public string CustomerName { get; set; }
        public string CustomerAddress { get; set; }
        public string CustomerPhone { get; set; }
        public string CustomerEmail { get; set; }
        public string ProductName { get; set; }
        public int NumberOfItem { get; set; }
        public string CouponCodeSaleOff { get; set; }
    }
}