using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services
{
    public interface IApplicationSignInManager
    {
        /// <summary>
        /// User login into system
        /// </summary>
        /// <param name="email">login email</param>
        /// <param name="password">login password</param>
        /// <param name="remember">remeber for next login true or false</param>
        /// <returns>SignInStatus</returns>
        Task<SignInStatus> UserSignInAsync(string email, string password, bool remember);
        Task<SignInStatus> ExternalUserSignInAsync(ExternalLoginInfo loginInfo, bool isPersistent);
        void Dispose();
    }
}
