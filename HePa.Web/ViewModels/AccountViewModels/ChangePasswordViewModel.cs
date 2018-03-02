using System.ComponentModel.DataAnnotations;
namespace HePa.Web.ViewModels.AccountViewModels
{
	public class ChangePasswordViewModel
	{
        [Required(ErrorMessage = "Bạn chưa điền mật khẩu hiện tại")]
        [DataType(DataType.Password), Display(Name = "Mật khẩu hiện tại")]
        public string CurrentPassword { get; set; }

        [Required(ErrorMessage = "Bạn chưa điền mật khẩu")]
        [StringLength(255, ErrorMessage = "Mật khẩu phải trên 6 ký tự", MinimumLength = 6)]
        [DataType(DataType.Password), Display(Name = "Mật khẩu mới")]
        public string NewPassword { get; set; }

        [Required(ErrorMessage = "Vui lòng điền lặp lại mật khẩu")]
        [DataType(DataType.Password), Display(Name = "Xác nhận mật khẩu mới")]
        [Compare("NewPassword", ErrorMessage = "Mật khẩu mới không khớp")]
        public string ConfirmNewPassword { get; set; }
	}
}