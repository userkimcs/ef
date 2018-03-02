using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace HePa.Web.ViewModels.AccountViewModels
{
    public class UserInfoViewModel
    {
        public string Name { get; set; }

        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public Nullable<DateTime> BirthDay { get; set; }
        public string Job { get; set; }
        public string Place { get; set; }
        public string Avatar { get; set; }
        [Required(ErrorMessage = "Chưa nhập tên hiển thị")]
        public string DisplayName { get; set; }
        [DataType(DataType.PhoneNumber)]
        public string PhoneNumber { get; set; }

        public ApplicationUser MapViewModelToUser(ApplicationUser user)
        {
            user.Name = this.Name;
            user.PhoneNumber = this.PhoneNumber;
            user.BirthDay = this.BirthDay;
            user.Job = this.Job;
            user.Place = this.Place;
            user.Avatar = this.Avatar;
            user.DisplayName = this.DisplayName;
            return user;
        }

        public UserInfoViewModel(ApplicationUser user)
        {
            this.Name = user.Name;
            this.PhoneNumber = user.PhoneNumber;
            this.BirthDay = user.BirthDay;
            this.Job = user.Job;
            this.Place = user.Place;
            this.Avatar = user.Avatar;
            this.DisplayName = user.DisplayName;
        }
        public UserInfoViewModel()
        {

        }
    }
}