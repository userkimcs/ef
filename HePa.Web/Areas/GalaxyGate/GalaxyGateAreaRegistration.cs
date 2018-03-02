using HePa.Core.Helpers;
using HePa.Web.Areas.GalaxyGate.Controllers;
using System.Web.Mvc;

namespace HePa.Web.Areas.GalaxyGate
{
    public class GalaxyGateAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "GalaxyGate";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            //
            //    context.Routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            //    // This will add the parameter "subdomain" to the route parameters
            //    context.Routes.Add(new SubdomainRoute());

            //    context.Routes.MapRoute(
            //        name: "GrammarDefault",
            //        url: "{controller}/{action}/{id}",
            //        defaults: new { controller = "GrammarLookUp", action = "Index", id = UrlParameter.Optional }
            //    );
            context.Routes.MapMvcAttributeRoutes();
            // context.Routes.MapAttributeRoutes(config => config.AddRoutesFromController<GrammarLookUpController>());  
        }
    }
}