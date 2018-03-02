using HePa.Core.Entities;
using HePa.Web.ViewModels.AccountViewModels;
using System.Collections.Generic;

namespace HePa.Web.ViewModels.HomeViewModels
{
    /// <summary>
    /// Index page display register form 
    /// If user has been authenticated
    /// </summary>
    public class IndexViewModel //: LoginViewModel
    {
        // Login form
        public LoginViewModel Login { get; set; }
        public RegisterViewModel Register { get; set; }

        public IndexViewModel()
        {
            Login = new LoginViewModel();
            Register = new RegisterViewModel();
        }

    }
}