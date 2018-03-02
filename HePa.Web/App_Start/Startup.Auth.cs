using HePa.Core.Entities;
using HePa.Data.Context;
using HePa.Service.Services;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin.Security.Facebook;
using Microsoft.Owin.Security.Google;
using Owin;
using System;
using System.Security.Claims;

namespace HePa.Web
{
    public partial class Startup
    {
        // For more information on configuring authentication, please visit http://go.microsoft.com/fwlink/?LinkId=301864
        public void ConfigureAuth(IAppBuilder app)
        {
            app.CreatePerOwinContext<ApplicationDbContext>(ApplicationDbContext.Create);
            app.CreatePerOwinContext<ApplicationUserManager>(ApplicationUserManager.Create);
            app.CreatePerOwinContext<ApplicationSignInManager>(ApplicationSignInManager.Create);

            // Enable the application to use a cookie to store information for the signed in user
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/" + HePa.Core.Helpers.CultureHelper.GetCurrentCulture() + "/Account/Login"),
                //Provider = new CookieAuthenticationProvider
                //{
                //    // Enables the application to validate the security stamp when the user logs in.
                //    // This is a security feature which is used when you change a password or add an external login to your account.  
                //    OnValidateIdentity = SecurityStampValidator.OnValidateIdentity<ApplicationUserManager, ApplicationUser>(
                //        validateInterval: TimeSpan.FromMinutes(1),
                //        regenerateIdentity: (manager, user) => user.GenerateUserIdentityAsync(manager))
                //}
            });
            // Use a cookie to temporarily store information about a user logging in with a third party login provider
            app.UseExternalSignInCookie(DefaultAuthenticationTypes.ExternalCookie);
            app.UseCookieAuthentication(new CookieAuthenticationOptions());

            // Uncomment the following lines to enable logging in with third party login providers
            //app.UseMicrosoftAccountAuthentication(
            //    clientId: "",
            //    clientSecret: "");

            //app.UseTwitterAuthentication(
            //   consumerKey: "",
            //   consumerSecret: "");
            #region Facebook authentication
            var facebookAuthenticationOptions = new FacebookAuthenticationOptions()
            {
                AppId = "570146336422477",
                AppSecret = "f7ee4dff25e7d16253ec69315f57a0ef",
            };
            facebookAuthenticationOptions.Scope.Add("email");
            facebookAuthenticationOptions.Scope.Add("user_birthday");
            app.UseFacebookAuthentication(facebookAuthenticationOptions);
            #endregion
            #region google
            /*var googleAuthenticationOptions = new GoogleOAuth2AuthenticationOptions()
            {
                ClientId = "278219876769-pv28k773ckejnrdk3gfp5s9d5u9lqfme.apps.googleusercontent.com",
                ClientSecret = "CMh7Fj8_OJvp1dxRtTWcw9p3",
            };
            googleAuthenticationOptions.Scope.Add("email");
            googleAuthenticationOptions.Scope.Add("profile");
            app.UseGoogleAuthentication(googleAuthenticationOptions);
            
            */
            app.UseGoogleAuthentication(
             clientId: "278219876769-pv28k773ckejnrdk3gfp5s9d5u9lqfme.apps.googleusercontent.com",
             clientSecret: "CMh7Fj8_OJvp1dxRtTWcw9p3"
             );
            #endregion
        }
    }
}