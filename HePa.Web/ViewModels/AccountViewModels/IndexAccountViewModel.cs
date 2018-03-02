using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.ViewModels.AccountViewModels
{
    public class IndexAccountViewModel
    {
        public string Name { get; set; }
        public DateTime? BirthDay { get; set; }
        public string PhoneNumber { get; set; }
        public string Place { get; set; }
    }
}