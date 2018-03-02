using System.ComponentModel.DataAnnotations;

namespace HePa.Web.ViewModels.AccountViewModels
{
    public class RegisterViewModel
    {
        [Required(ErrorMessage="Bạn chưa điền tên hiển thị")]
        [Display(Name = "Tên hiển thị")]
        public string DisplayName { get; set; }

        [Required(ErrorMessage = "Bạn chưa điền email")]
        [EmailAddress(ErrorMessage = "Bạn phải nhập email")]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Bạn chưa điền mật khẩu")]
        [DataType(DataType.Password)]
        [Display(Name = "Mật khẩu")]
        public string Password { get; set; }

        [Required(ErrorMessage = "Bạn chưa điền xác nhận mật khẩu")]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "Mật khẩu xác nhận chưa trùng khớp")]
        [Display(Name = "Nhập lại mật khẩu")]
        public string ConfirmPassword { get; set; }
    }
}