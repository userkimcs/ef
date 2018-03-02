using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HePa.Web.ViewModels.AccountViewModels
{
    public class ExternalRegisterViewModel
    {
        [Required]
        public string DisplayName { get; set; }
        [Required]
        public string Email { get; set; }
        public string Provider { get; set; }
        public ExternalRegisterViewModel()
        {
            // Do nothing
        }

        public ExternalRegisterViewModel(string DisplayName, string Email, string Provider)
        {
            this.DisplayName = DisplayName;
            this.Email = Email;
            this.Provider = Provider;
        }
    }
}