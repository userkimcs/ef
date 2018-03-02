using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.Admin.ViewModels.HepaPassportAdminViewModel
{
    public class HepaPassportViewModel
    {
        public string PassportCode { get; set; }
        public string ActiveCode { get; set; }
        public int ExpiryDate { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }
        public string UserId { get; set; }
       public Nullable<DateTime> ActiveDate { get; set; }

        public HepaPassportViewModel()
        {

        }

        public HepaPassportViewModel(string p1, string p2, int p3, DateTime? nullable1, string p4, DateTime? nullable2)
        {
            // TODO: Complete member initialization
            this.PassportCode = p1;
            this.ActiveCode = p2;
            this.ExpiryDate = p3;
            this.CreatedDate = nullable1;
            this.UserId = p4;
            this.ActiveDate = nullable2;
        }
    }
}