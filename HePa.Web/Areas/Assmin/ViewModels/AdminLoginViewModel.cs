

using System.ComponentModel.DataAnnotations;
namespace HePa.Web.Areas.Admin.ViewModels
{
    public class AdminLoginViewModel
    {
        [DataType(DataType.EmailAddress)]
        public string UserName { get; set; }
        [DataType(DataType.Password)]
        public string PassWord { get; set; }
    }
}