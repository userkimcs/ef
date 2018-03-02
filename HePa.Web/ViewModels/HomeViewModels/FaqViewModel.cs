using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.ViewModels.HomeViewModels
{
    public class FaqViewModel
    {
        // Contact form
        public CustomerInfoFaq Contact { get; set; }

        [Required(ErrorMessage = "Bạn chưa điền nội dung")]
        public string Message { get; set; }
        public List<SelectListItem> OptionType { get; set; }
        [Required(ErrorMessage = "Chưa chọn thông tin trợ giúp")]
        public int OptionVal { get; set; }
        public FaqViewModel()
        {
            Contact = new CustomerInfoFaq();
            OptionType = new List<SelectListItem>() {
                new SelectListItem(){Value = "1", Text="Mua thẻ Hepa Passport"},
                new SelectListItem(){Value = "2", Text="Cách học tại Hepatown"},
                new SelectListItem(){Value = "3", Text="Tài khoản cá nhân"},
                new SelectListItem(){Value = "4", Text="Góp ý"},
                new SelectListItem(){Value = "5", Text="Khác"},
            };
        }
    }
}