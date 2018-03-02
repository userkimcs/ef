using System.Web.Mvc;

namespace HePa.Web.Areas.History
{
    public class HistoryAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "History";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.Routes.MapMvcAttributeRoutes();
        }
    }
}