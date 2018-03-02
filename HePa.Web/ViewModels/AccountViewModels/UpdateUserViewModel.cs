using HePa.Core.Entities;
using HePa.Core.Helpers;
using System.Collections.Generic;

namespace HePa.Web.ViewModels.AccountViewModels
{
    public class UpdateUserViewModel
    {
        public string UserName { get; set; }
        public string Name { get; set; }
        public string Job { get; set; }
        public string Place { get; set; }
        public string Avatar { get; set; }
        public string PhoneNumber { get; set; }

        // Date time 
        public string Day { get; set; }
        public string Month { get; set; }
        public string Year { get; set; }
        // List date time 
        public IList<string> Days { get; set; }
        public IList<string> Months { get; set; }
        public IList<string> Years { get; set; }

        public UpdateUserViewModel(ApplicationUser user)
        {
            this.Days = DateTimeHelper.GetListDay();
            this.Months = DateTimeHelper.GetListMonth();
            this.Years = DateTimeHelper.GetListYear();
            this.UserName = user.UserName;
            this.Name = user.Name;
            this.Job = user.Job;
            this.Place = user.Place;
            this.Avatar = user.Avatar;
            this.PhoneNumber = user.PhoneNumber;
        }

        // Default ctor
        public UpdateUserViewModel()
        {
            // Do nothing
        }

        /// <summary>
        /// Mapping model info into user info
        /// </summary>
        /// <param name="user">user</param>
        /// <returns>user with updated info</returns>
        public ApplicationUser MapToApplicationUser(ApplicationUser user)
        {
            user.Avatar = this.Avatar;
            user.BirthDay = Factory.CreateDateTime(this.Day, this.Month, this.Year);
            user.Job = this.Job;
            user.Name = this.Name;
            user.PhoneNumber = this.PhoneNumber;
            user.UserName = this.UserName;
            user.Place = this.Place;
            return user;
        }
    }
}