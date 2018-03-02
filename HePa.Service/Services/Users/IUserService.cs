using HePa.Core.Entities;
using HePa.Core.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.Users
{
    public interface IUserService
    {
        /// <summary>
        /// get all users detail
        /// </summary>
        /// <returns>user list</returns>
        IList<ApplicationUser> GetAllUsers();
        Task<IList<ApplicationUser>> GetAllUsersAsync();

        /// <summary>
        /// get all users have name
        /// </summary>
        /// <param name="name">display name</param>
        /// <returns>user list</returns>
        IList<ApplicationUser> GetUsersByName(string name);      
        Task<IList<ApplicationUser>> GetUsersByNameAsync(string name);

        /// <summary>
        /// get user have matched email
        /// </summary>
        /// <param name="email">user's email</param>
        /// <returns>1 user</returns>
        ApplicationUser GetUsersById(string id);
        Task<ApplicationUser> GetUsersByIdAsync(string id);

        /// <summary>
        /// update user
        /// </summary>
        /// <param name="user">user</param>
        /// <returns>1 user</returns>
        ServiceResult Update(ApplicationUser user);
        Task<ServiceResult> UpdateAsync(ApplicationUser user);

        /// <summary>
        /// check user'pay
        /// </summary>
        /// <param name="user">user id</param>
        /// <returns>True if paid and vice sera</returns>
        bool CheckUserPay(string userId);
        Task<bool> CheckUserPayAsync(string userId);

        /// <summary>
        /// Use to block user's active-account function
        /// </summary>
        /// <param name="id">user id</param>
        /// <returns></returns>
        ServiceResult Block(string id);
        Task<ServiceResult> BlockAsync(string id);

        /// <summary>
        /// check user's blocking
        /// </summary>
        /// <param name="id">user id</param>
        /// <returns>true if blocked, vice sera</returns>
        Task<bool> IsBlocked(string id);

        /// <summary>
        /// counter use to block user if count >= 3
        /// </summary>
        /// <param name="id">user id</param>
        /// <returns></returns>
        ServiceResult CountBlock(string id);
        Task<ServiceResult> CountBlockAsync(string id);

        /// <summary>
        /// Calcualte exp days
        /// </summary>
        /// <param name="userId"></param>
        /// <returns>return amount of exp days</returns>
        int CalculateExpDays(string userId);
        Task<int> CalculateExpDaysAsync(string userId);

        /// <summary>
        /// Calcualte the exp date
        /// </summary>
        /// <param name="userId"></param>
        /// <returns>return the exp date</returns>
        DateTime ShowExpDate(string userId);
        Task<DateTime> ShowExpDateAsync(string userId);

        /// <summary>
        /// Change paid user to free user
        /// Change learn words amount to free user dafault learnword amount (8 words in 13/10/2015)
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        Task<ServiceResult> DownGradeUserAsync(string userId);

        /// <summary>
        /// if user exp days is 0, run DownGreadeUserAsync
        /// else do nothing
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        Task<ServiceResult> CheckUserReleaseAsync(string userId);

        Task<bool> IsPaid(string userId);
    }
}
