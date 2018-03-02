using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.ViewModels.ClassViewModels
{
    public class IndexClassViewModel
    {
        public string ClassName { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string Abstract { get; set; }
        public string Image { get; set; }
    }
}