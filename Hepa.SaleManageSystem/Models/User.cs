using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hepa.SaleManageSystem.Models
{
    public static class Role
    {
        public const string User = "User";
        public const string Admin = "Admin";
        public const string Teacher = "Teacher";
        public const string Supporter = "Supporter";
    }
    public class User : BaseEntity
    {
        public string Name { get; set; }
        public string Role { get; set; }
        public string Password { get; set; }
    }
}