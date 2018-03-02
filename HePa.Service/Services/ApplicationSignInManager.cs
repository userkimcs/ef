using HePa.Core.Entities;
using HePa.Service.Services;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using System.Security.Claims;
using System.Threading.Tasks;

namespace HePa.Service.Services
{
    public class ApplicationSignInManager : SignInManager<ApplicationUser, string>, IApplicationSignInManager
    {
        public ApplicationSignInManager(ApplicationUserManager userManager, IAuthenticationManager authenticationManager)
            : base(userManager, authenticationManager)
        {
        }
        public override Task<ClaimsIdentity> CreateUserIdentityAsync(ApplicationUser user)
        {
            return user.GenerateUserIdentityAsync((ApplicationUserManager)UserManager);
        }
        public static ApplicationSignInManager Create(IdentityFactoryOptions<ApplicationSignInManager> options, IOwinContext context)
        {
            return new ApplicationSignInManager(context.GetUserManager<ApplicationUserManager>(), context.Authentication);
        }

        public Task<SignInStatus> UserSignInAsync(string email, string password, bool remember)
        {
            return base.PasswordSignInAsync(email, password, remember, false);
        }

        public Task<SignInStatus> ExternalUserSignInAsync(ExternalLoginInfo loginInfo, bool isPersistent)
        {
            return base.ExternalSignInAsync(loginInfo, isPersistent);
        }
    }
}
