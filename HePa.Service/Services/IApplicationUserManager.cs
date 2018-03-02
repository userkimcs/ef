using HePa.Core.Entities;
using HePa.Core.Helpers;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services
{
    public interface IApplicationUserManager
    {
        /// <summary>
        /// Get ApplicationUser by Id
        /// </summary>
        /// <param name="id">user id</param>
        /// <returns>Application user</returns>
        Task<ApplicationUser> GetByUserIdAsync(string id);
        Task<ApplicationUser> GetByUserEmailAsync(string email);
        /// <summary>
        /// Create new user
        /// </summary>
        /// <param name="user">User</param>
        /// <param name="password">Password</param>
        /// <returns>IdentityResult</returns>
        Task<IdentityResult> CreateUserAsync(ApplicationUser user, string password);
        /// <summary>
        /// <summary>
        /// Update user
        /// </summary>
        /// <param name="user">application user get by the Id</param>
        /// <returns>IdentityResult</returns>
        Task<IdentityResult> UpdateUserAsync(ApplicationUser user);
        /// <summary>
        /// Reset password of user 
        /// New password will be hashed
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="newPassword">new password</param>
        /// <returns></returns>
        Task<IdentityResult> ResetPasswordAsync(string userId, string newPassword);
        /// <summary>
        /// Send link for user to reset his password
        /// </summary>
        /// <param name="email">user mail</param>
        /// <returns>true if find email, false if not or not successfull</returns>
        Task<IdentityResult> SendResetPasswordEmailAsync(string email, string hostname);
        Task<IdentityResult> ChangeUserPasswordAsync(string userId, string currentPassword, string newPassword);
        void Dispose();
        Task<IList<System.Security.Claims.Claim>> GetUserClaimsAsync(string userId);
        /// <summary>
        /// register user by his external info
        /// </summary>
        /// <param name="displayName">display name get from external login</param>
        /// <param name="email">mail get from external login</param>
        /// <param name="provider">google,facebook, microsoft,...</param>
        /// <returns>IdentityResult</returns>
        Task<IdentityResult> ExternalRegister(string displayName, string email, string provider);
        Task<IdentityResult> HepaSignIn(string email, string password);
        /// <summary>
        /// Get external user 
        /// </summary>
        /// <param name="email">email</param>
        /// <param name="provider">provider</param>
        /// <returns>Application user if external user</returns>
        Task<ApplicationUser> GetExternalUser(string email, string provider);
        /// <summary>
        /// Get this
        /// </summary>
        /// <returns>this class</returns>
        UserManager<ApplicationUser> GetThis();
        /// <summary>
        /// Confirm reset password request
        /// </summary>
        /// <param name="userId">user id</param>
        /// <param name="accessKey">access key</param>
        /// <returns>If access key is expired, return error, other wise is successfull</returns>
        Task<IdentityResult> ComfirmResetPasswordRequestAsync(string userId, string accessKey);
        Task<ClaimsIdentity> CreateUserIdentityAsync(ApplicationUser user, string authenticationType);
        Task<IdentityResult> UpdateAsync(ApplicationUser user);

        void UploadAvatar(ApplicationUser user);
        Task UploadAvatarAsync(ApplicationUser user);
    }
}
