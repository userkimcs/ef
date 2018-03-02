using HePa.Core.Helpers;
using System.Web.Mvc;

namespace HePa.Web.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Assmin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            /*
            context.MapRoute(
                "Admin_default",
                "{culture}/Admin/{controller}/{action}/{id}",
                new { culture = CultureHelper.GetDefaultCulture(), action = "Index", id = UrlParameter.Optional },
                new string[] { "HePa.Web.Areas.Admin.Controllers" }
            );*/
            context.Routes.MapMvcAttributeRoutes();
        }
    }
}