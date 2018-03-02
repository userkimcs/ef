using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.Admin.ViewModels.HepaPassportAdminViewModel
{
    public class HepaPassportEditViewModel
    {
        public string PassportCode { get; set; }
        public string ActiveCode { get; set; }
        public int Expirydate { get; set; }

        public HepaPassportEditViewModel()
        {

        }
        public HepaPassportEditViewModel(string passportCode, int expirydate,string activeCode)
        {
            this.PassportCode = passportCode;
            this.Expirydate = expirydate;
            this.ActiveCode = activeCode;
        }
    }
}