using System.ComponentModel.DataAnnotations;
namespace HePa.Web.ViewModels.AccountViewModels
{
    public class ResetPasswordViewModel
    {
        [Required(ErrorMessage = "Bạn chưa điền mật khẩu")]
        [StringLength(255, ErrorMessage = "Mật khẩu phải trên 6 ký tự", MinimumLength = 6)]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Required(ErrorMessage = "Vui lòng điền lặp lại mật khẩu")]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "Nhập lại mật khẩu không khớp")]
        public string ConfirmPassword { get; set; }
        public ResetPasswordViewModel()
        {
            // default
            // Do nothing
        }
    }
}