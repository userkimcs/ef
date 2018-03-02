using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
namespace HePa.Web.ViewModels.Order
{
    public class CustomerInfoViewModel
    {
        [Required(ErrorMessage="Chưa điền đầy đủ họ tên")]
        public string FullName { get; set; }

        [EmailAddress(ErrorMessage="Địa chỉ email chưa đúng định dạng")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Chưa điền số điện thoại liên lạc")]
        public string PhoneNumber { get; set; }

        [Required(ErrorMessage = "Chưa điền địa chỉ liên lạc")]
        public string Address { get; set; }
    }
}