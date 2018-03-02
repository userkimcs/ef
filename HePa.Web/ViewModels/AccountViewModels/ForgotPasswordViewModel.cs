using System.ComponentModel.DataAnnotations;
namespace HePa.Web.ViewModels.AccountViewModels
{
    public class ForgotPasswordViewModel
    {
        [Required(ErrorMessage="Bạn chưa nhập email")]
        [EmailAddress(ErrorMessage = "Bạn phải nhập email")]
        [Display(Name="Email đăng ký")]
        public string Email { get; set; }
       // [Required]
        //public string ConfirmCode { get; set; }
    }
}