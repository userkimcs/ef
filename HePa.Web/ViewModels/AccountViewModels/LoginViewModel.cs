using System.ComponentModel.DataAnnotations;

namespace HePa.Web.ViewModels.AccountViewModels
{
    public class LoginViewModel
    {
        [Required(ErrorMessage = "Bạn chưa nhập email")]
        [EmailAddress(ErrorMessage = "Bạn phải nhập email")]
        [Display(Name = "Email của bạn")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Bạn chưa điền mật khẩu")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Display(Name = "Duy trì đăng nhập")]
        public bool RememberMe { get; set; }
    }
}