using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Data.Context;
using HePa.Service.Services;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Security;
using System.Security.Claims;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;

namespace HePa.Service.Services
{
    public class ApplicationUserManager : UserManager<ApplicationUser>, IApplicationUserManager
    {
        public ApplicationUserManager(IUserStore<ApplicationUser> store)
            : base(store)
        {
            UserValidator = new UserValidator<ApplicationUser>(this) { AllowOnlyAlphanumericUserNames = false };
        }
        public static ApplicationUserManager Create(IdentityFactoryOptions<ApplicationUserManager> options, IOwinContext context)
        {
            var ctx = context.Get<ApplicationDbContext>();
            var manager = new ApplicationUserManager(new UserStore<ApplicationUser>(ctx));
            // Configure validation logic for usernames
            manager.UserValidator = new UserValidator<ApplicationUser>(manager)
            {
                AllowOnlyAlphanumericUserNames = false

            };

            // Configure validation logic for passwords
            manager.PasswordValidator = new PasswordValidator
            {
                RequiredLength = 6,
            };

            // Configure user lockout defaults
            manager.UserLockoutEnabledByDefault = true;
            manager.DefaultAccountLockoutTimeSpan = TimeSpan.FromMinutes(5);
            manager.MaxFailedAccessAttemptsBeforeLockout = 5;

            // Register two factor authentication providers. This application uses Phone and Emails as a step of receiving a code for verifying the user
            // You can write your own provider and plug it in here.
            manager.RegisterTwoFactorProvider("Phone Code", new PhoneNumberTokenProvider<ApplicationUser>
            {
                MessageFormat = "Your security code is {0}"
            });
            manager.RegisterTwoFactorProvider("Email Code", new EmailTokenProvider<ApplicationUser>
            {
                Subject = "Security Code",
                BodyFormat = "Your security code is {0}"
            });
            var dataProtectionProvider = options.DataProtectionProvider;
            if (dataProtectionProvider != null)
            {
                manager.UserTokenProvider =
                    new DataProtectorTokenProvider<ApplicationUser>(dataProtectionProvider.Create("ASP.NET Identity"));
            }
            return manager;
        }

        public Task<ApplicationUser> GetByUserIdAsync(string id)
        {
            /// Return user based on parent class 
            return base.FindByIdAsync(id);
        }

        public async Task<IdentityResult> CreateUserAsync(ApplicationUser user, string password)
        {
            try
            {
                // Check if exist email 
                var checkedUser = await base.FindByEmailAsync(user.Email);
                if (checkedUser != null)
                {
                    return IdentityResult.Failed(Resource.IdentityMessages.IdentityResult.ExistEmailAddress);
                }
                else
                {
                    // Update created date is now
                    user.CreatedDate = System.DateTime.Now;
                    // Update last active is now
                    user.LastActive = System.DateTime.Now;
                    // return result 
                    return await base.CreateAsync(user, password);
                }
            }
            catch (Exception ex) // Exception
            {
                return IdentityResult.Failed(ex.Message);
            }
        }

        public Task<IdentityResult> UpdateUserAsync(ApplicationUser user)
        {
            return base.UpdateAsync(user);
        }

        public async Task<IdentityResult> ChangeUserPasswordAsync(string userId, string currentPassword, string newPassword)
        {
            return await base.ChangePasswordAsync(userId, currentPassword, newPassword);
        }
        public async Task<IdentityResult> ResetPasswordAsync(string userId, string newPassword)
        {
            try
            {
                // Hash password
                newPassword = await Task.Run(() => PasswordHasher.HashPassword(newPassword));
                // Find user by email
                ApplicationUser user = await this.GetByUserIdAsync(userId);
                // if not found, return error
                if (user == null)
                {
                    return IdentityResult.Failed("User not found");
                }
                // Update user password
                user.PasswordHash = newPassword;
                // Update user
                return await base.UpdateAsync(user);
            }
            catch
            {
                return IdentityResult.Failed("Error");
            }
        }

        public async Task<IdentityResult> SendResetPasswordEmailAsync(string email, string hostname)
        {
            try
            {
                // Find user 
                ApplicationUser user = await base.FindByEmailAsync(email);
                // Check if correct
                // If incorrect, return message not exist email
                if (user == null)
                {
                    return IdentityResult.Failed(Resource.IdentityMessages.IdentityResult.EmailNotFound);
                }
                else
                {
                    // Get mail body
                    string mailBody = await FileHelper.ReadFileAsync("dist/hp/email/ForgetPassword.txt");
                    // replace by name
                    mailBody = mailBody.Replace("@hp_username", user.DisplayName);
                    mailBody = mailBody.Replace("@hp_useremail", user.Email);
                    // Get reset password code 
                    string code = Guid.NewGuid().ToString().Substring(0, 8);
                    user.AccessKey = code;
                    user.LastAccess = System.DateTime.Now;
                    // Get uri
                    StringBuilder resetPasswordUri = new StringBuilder(hostname);
                    // reset password uri xxx/vi/Account/ResetPassword/sdfsdcsa
                    resetPasswordUri.Append("/reset-password/")
                        .Append(user.Id).Append("/").Append(code);
                    // Replace uri
                    mailBody = mailBody.Replace("@hp_resetpassword", resetPasswordUri.ToString());
                    // Send email
                    await EmailHelper.SendEmailAsync(HePa.Resource.Email.EmailSender.SupportHepa, email, "Yêu cầu khôi phục mật khẩu", mailBody);
                    // update user 
                    await base.UpdateAsync(user);
                    // Successfull
                    return IdentityResult.Success;
                }
            }
            catch (Exception ex)
            {
                return IdentityResult.Failed(ex.Message);
            }
        }

        public new void Dispose()
        {
            base.Dispose(true);
        }

        public Task<IList<System.Security.Claims.Claim>> GetUserClaimsAsync(string userId)
        {
            return base.GetClaimsAsync(userId);
        }

        public Task<ApplicationUser> GetByUserEmailAsync(string email)
        {
            return base.FindByEmailAsync(email);
        }


        public async Task<IdentityResult> ExternalRegister(string displayName, string email, string provider)
        {
            // Check if email == null
            if (String.IsNullOrEmpty(email))
            {
                email = null;
            }
            else
            {
                // Do nothing
            }
            // Create new user 
            ApplicationUser user = new ApplicationUser
            {
                Email = email,
                UserName = email,
                DisplayName = displayName,
                CreatedDate = System.DateTime.Now,
                IsBanned = false,
                IsPaid = false,
                IsVerified = false,
                Language = Language.vi,
                LastActive = System.DateTime.Now,
                PasswordHash = null,
                Role = Role.User,
                LoginProvider = provider,
                IsBlocked = false,
                BlockCounter = 0,
            };
            try
            {
                // Find email 
                ApplicationUser existedUser = await base.FindByEmailAsync(email);
                if (existedUser != null)
                {
                    // Get provider 
                    string existedProvider = String.IsNullOrEmpty(existedUser.LoginProvider) ? "Hepa" : existedUser.LoginProvider;
                    // Create and replace message
                    StringBuilder errorMessage = new StringBuilder(Resource.IdentityMessages.IdentityResult.ExistEmailAddress);
                    errorMessage.Replace("@provider", existedProvider);
                    return IdentityResult.Failed(errorMessage.ToString());
                }
                else // If not find user
                {
                    return await base.CreateAsync(user);
                }
            }
            catch (Exception ex)
            {
                return IdentityResult.Failed(ex.Message);
            }
        }

        public async Task<ApplicationUser> GetExternalUser(string email, string provider)
        {
            // Get user by email
            ApplicationUser user = await base.FindByEmailAsync(email);
            if (user != null)
            {
                // Check provider
                if (String.IsNullOrEmpty(user.LoginProvider) == true)
                {
                    return null;
                }
                else if (user.LoginProvider == provider) /// Check provider
                {
                    return user;
                }
                else // If not matched provider
                {
                    return null;
                }
            }
            else
            {
                return null;
            }
        }


        public UserManager<ApplicationUser> GetThis()
        {
            return this;
        }


        public async Task<IdentityResult> HepaSignIn(string email, string password)
        {
            // find user by email
            ApplicationUser user = await base.FindByEmailAsync(email);
            // Check user
            if (user != null)
            {
                // Check input password and hashed password in database
                PasswordVerificationResult verified = PasswordHasher.VerifyHashedPassword(user.PasswordHash, password);
                if (verified == PasswordVerificationResult.Success) // Successfull case
                {
                    return IdentityResult.Success;
                }
                else // Wrong password
                {
                    return IdentityResult.Failed(Resource.IdentityMessages.IdentityResult.WrongPassword);
                }
            }
            else // not found
            {
                return IdentityResult.Failed(Resource.IdentityMessages.IdentityResult.NotExistEmailAdress);
            }
        }


        public async Task<IdentityResult> ComfirmResetPasswordRequestAsync(string userId, string accessKey)
        {
            ApplicationUser user = await base.FindByIdAsync(userId);
            DateTime expiredDate = user.LastAccess.Value.AddDays(1);
            DateTime now = System.DateTime.Now;
            if (DateTime.Compare(now, expiredDate) > 0)
            {
                return IdentityResult.Failed(Resource.IdentityMessages.IdentityResult.AccessExpiredDate);
            }
            else
            {
                // Check access key
                if (String.Compare(user.AccessKey, accessKey) != 0)
                {
                    return IdentityResult.Failed(Resource.IdentityMessages.IdentityResult.WrongResetPasswordUrl);
                }
                else
                {
                    return IdentityResult.Success;
                }
            }
        }

        public Task<ClaimsIdentity> CreateUserIdentityAsync(ApplicationUser user, string authenticationType)
        {
            return base.CreateIdentityAsync(user, authenticationType);
        }

        public override Task<IdentityResult> UpdateAsync(ApplicationUser user)
        {
            return base.UpdateAsync(user);
        }



        public void UploadAvatar(ApplicationUser user)
        {
            if (HttpContext.Current.Request.Files.Count > 0)
            {
                // Get current file
                var file = HttpContext.Current.Request.Files[0];

                if (file != null && file.ContentLength > 0)
                {
                    string filename = "";
                    // Get file extension
                    var extension = Path.GetExtension(file.FileName);
                    // check if user has already upload avatar
                    if (String.IsNullOrEmpty(user.Avatar) == false)
                    {
                        // find index of extension
                        int extensionIndex = user.Avatar.LastIndexOf('.');
                        // get file name
                        filename = user.Avatar.Substring(0, extensionIndex);
                    }
                    else
                    {
                        // create hashed file name 
                        filename = Guid.NewGuid().ToString().Substring(24) + Path.GetFileNameWithoutExtension(file.FileName).GetHashCode().ToString("00000000");
                        // update row in database 
                        user.Avatar = filename + extension;
                        // update row 
                        this.Update(user);
                    }
                    // save to path
                    var path = Path.Combine(HttpContext.Current.Server.MapPath("~/dist/img/user/"), filename + extension);
                    // save file under the path 
                    file.SaveAs(path);

                    // resize photo
                    Image imgOriginal = Image.FromFile(path);

                    //pass in whatever value you want
                    Image imgActual = Scale(imgOriginal);
                    imgOriginal.Dispose();
                    imgActual.Save(path);
                    imgActual.Dispose();

                }
            }
        }

        public async Task UploadAvatarAsync(ApplicationUser user)
        {
            if (HttpContext.Current.Request.Files.Count > 0)
            {
                // Get current file
                var file = HttpContext.Current.Request.Files[0];

                if (file != null && file.ContentLength > 0)
                {
                    string filename = "";
                    // Get file extension
                    var extension = Path.GetExtension(file.FileName);
                    // check if user has already upload avatar
                    if (String.IsNullOrEmpty(user.Avatar) == false)
                    {
                        // find index of extension
                        int extensionIndex = user.Avatar.LastIndexOf('.');
                        // get file name
                        filename = user.Avatar.Substring(0, extensionIndex);
                    }
                    else
                    {
                        // create hashed file name 
                        filename = Guid.NewGuid().ToString().Substring(24) + Path.GetFileNameWithoutExtension(file.FileName).GetHashCode().ToString("00000000");
                        // update row in database 
                        user.Avatar = filename + extension;
                        // test 
                        user.PhoneNumber = "18252482053";
                        user.Job = "DEV";
                        // update row 
                        await this.UpdateAsync(user);
                    }
                    // save to path
                    var path = Path.Combine(HttpContext.Current.Server.MapPath("~/dist/img/user/"), filename + extension);
                    // save file under the path 
                    file.SaveAs(path);

                    // resize photo
                    Image imgOriginal = Image.FromFile(path);

                    //pass in whatever value you want
                    Image imgActual = Scale(imgOriginal);
                    imgOriginal.Dispose();
                    imgActual.Save(path);
                    imgActual.Dispose();

                }
            }
        }
        #region helpers
        private Image Scale(Image imgPhoto)
        {
            float sourceWidth = imgPhoto.Width;
            float sourceHeight = imgPhoto.Height;
            float destHeight = 0;
            float destWidth = 0;
            int sourceX = 0;
            int sourceY = 0;
            int destX = 0;
            int destY = 0;

            // force resize, might distort image
            if (sourceWidth > 1024 && sourceHeight > 1024)
            {
                destWidth = sourceWidth / 10;
                destHeight = sourceHeight / 10;
            }
            else
            {
                destWidth = sourceWidth;
                destHeight = sourceHeight;
            }
            Bitmap bmPhoto = new Bitmap((int)destWidth, (int)destHeight,
                                        PixelFormat.Format32bppPArgb);
            bmPhoto.SetResolution(imgPhoto.HorizontalResolution, imgPhoto.VerticalResolution);

            Graphics grPhoto = Graphics.FromImage(bmPhoto);
            grPhoto.InterpolationMode = InterpolationMode.HighQualityBicubic;

            grPhoto.DrawImage(imgPhoto,
                new Rectangle(destX, destY, (int)destWidth, (int)destHeight),
                new Rectangle(sourceX, sourceY, (int)sourceWidth, (int)sourceHeight),
                GraphicsUnit.Pixel);

            grPhoto.Dispose();

            return bmPhoto;
        }
        #endregion
    }
}