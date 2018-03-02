using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace HePa.Web.ViewModels.AccountViewModels
{
    public class PaymentViewModel
    {
        [Required(ErrorMessage = "Chưa chọn loại thẻ")]
        [Display(Name = "Loại thẻ")]
        public string CardPeriod { get; set; }

       
        [Required(ErrorMessage = "Bạn chưa nhập tên")]
        [StringLength(100, MinimumLength = 6, ErrorMessage = "Từ 6 đến 100 ký tự")]
        [Display(Name = "Họ và Tên")]
        public string Name { get; set; }



        [Required(ErrorMessage = "Bạn chưa nhập số điện thoại")]
        [Display(Name = "Số điện thoại")]
        public string NumberPhone1 { get; set; }

        public string NumberPhone2 { get; set; }

        [Required(ErrorMessage = "Bạn chưa nhập địa chỉ")]
        [StringLength(100, MinimumLength = 6, ErrorMessage = "Từ 6 đến 256 ký tự")]
        [Display(Name = "Địa chỉ")]
        public string Address { get; set; }
    }
}