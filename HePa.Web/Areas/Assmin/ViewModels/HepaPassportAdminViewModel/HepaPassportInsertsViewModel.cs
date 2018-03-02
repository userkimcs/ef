using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.Admin.ViewModels.HepaPassportAdminViewModel
{
    public class HepaPassportInsertsViewModel
    {
        public int StartNumber { get; set; }

        public int EndNumber { get; set; }

        public int ExpiryDate { get; set; }
    }
}