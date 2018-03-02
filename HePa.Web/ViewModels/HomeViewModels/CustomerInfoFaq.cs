using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HePa.Web.ViewModels.HomeViewModels
{
    public class CustomerInfoFaq
    {
        [Required(ErrorMessage = "Chưa điền họ và tên")]
        public string FullName { get; set; }

        [EmailAddress(ErrorMessage = "Địa chỉ email chưa đúng định dạng")]
        public string Email { get; set; }

        [Phone(ErrorMessage = "Điện thoại chưa đúng định dạng")]
        public string PhoneNumber { get; set; }
    }
}