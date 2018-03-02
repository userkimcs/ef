using System.Web.Mvc;

namespace HePa.Web.Areas.StudyingProgram
{
    public class StudyingProgramAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "StudyingProgram";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            //context.MapRoute(
            //    "StudyingProgram_default",
            //    "StudyingProgram/{controller}/{action}/{id}",
            //    new { action = "Index", id = UrlParameter.Optional }
            //);
            context.Routes.MapMvcAttributeRoutes();
        }
    }
}