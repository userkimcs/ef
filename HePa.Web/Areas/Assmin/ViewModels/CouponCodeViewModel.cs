using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.Admin.ViewModels
{
    public class CouponCodeViewModel
    {
        public string code { get; set; }
        public string kindOfVoucher { get; set; }
        public string Desciption { get; set; }
        public int LimitedCondition { get; set; }
        public int UsageAmount { get; set; }
        public Nullable<DateTime> CreateDate { get; set; }
        public Nullable<DateTime> EndDate { get; set; }
    }
}