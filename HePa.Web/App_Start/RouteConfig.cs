using HePa.Core.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace HePa.Web
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            //  routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            AreaRegistration.RegisterAllAreas();
            routes.MapMvcAttributeRoutes();

            //  routes.MapRoute(
            //    name: "Default1",
            //    url: "{controller}/{action}/{id}/{area}",
            //    defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional, area = UrlParameter.Optional }
            //);

            //  //Default
            //  routes.MapRoute(
            //      name: "Default",
            //      url: "{controller}/{action}/{id}",
            //      defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            //  );


        }
    }
}
