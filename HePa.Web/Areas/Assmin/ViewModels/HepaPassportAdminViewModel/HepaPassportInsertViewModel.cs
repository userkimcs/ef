using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.Admin.ViewModels.HepaPassportAdminViewModel
{
    public class HepaPassportInsertViewModel
    {
        public string PassportCode { get; set; }
        public int ExpiryDate { get; set; }
    }
}