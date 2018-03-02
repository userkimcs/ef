using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace HePa.Core.ErrorHandling
{
    public class CustomErrorHandler:HandleErrorAttribute
    {
        public override void OnException(ExceptionContext filterContext)
        {
            base.OnException(filterContext);
            //Logger.LogException(filterContext.Exception.StackTrace);
            filterContext.ExceptionHandled = true;
            filterContext.HttpContext.Response.Clear();
            if (filterContext.HttpContext.Session != null) filterContext.HttpContext.Session.RemoveAll();
            // set this to true so that IIS 7 does not use its own error pages
            filterContext.HttpContext.Response.TrySkipIisCustomErrors = true;
        }
    }
}
