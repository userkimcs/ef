using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.Admin.ViewModels
{
    public class UserViewModel
    {
        public string Id { get; set; }
        public string Email { get; set; }
        public string DisplayName { get; set; }
        public Nullable<int> Age { get; set; }
        public string Job { get; set; }
        public string Place { get; set; }
        public string CreatedDate { get; set; }
        public string LastActive { get; set; }
    }

    public class ListUsersViewModel : List<UserViewModel>
    {
        //public IList<UserViewModel> ListUserViewModel { get; set; }

        //public ListUsersViewModel()
        //{
        //    ListUserViewModel = new List<UserViewModel>();          
        //}

        public List<UserViewModel> MapFormApplicationUser(IList<ApplicationUser> users)
        {
            List<UserViewModel> uvms = new List<UserViewModel>();
            foreach (ApplicationUser u in users)
            {
                UserViewModel uvm = new UserViewModel()
                {
                    Id = u.Id,
                   
                };
                uvm.Email = u.Email;
                uvm.DisplayName = u.DisplayName;
                uvm.CreatedDate = u.CreatedDate.Value.ToShortDateString();
                uvm.LastActive = u.LastActive.Value.Date.ToShortDateString();
                if (u.BirthDay != null)
                {
                    uvm.Age = (DateTime.Now.Year - u.BirthDay.Value.Year);
                }
                if (u.Job != null)
                {
                    uvm.Job = u.Job;
                }
                if (u.Place != null)
                {
                    uvm.Place = u.Place;
                }
                uvms.Add(uvm);
            }
            return uvms;
        }
    }
    
}