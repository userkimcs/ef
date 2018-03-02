using HePa.Service.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using HePa.Core.Helpers;
using HePa.Web.dist.hp.webUlti;
using HePa.Service.Services.ExperienceServices;
using HePa.Service.Services.CurrencyServices;
using HePa.Core.Entities;
using HePa.Service.Services.Lectures;
using HePa.Service.Services.Histories;
using System.Web.Script.Serialization;
using HePa.Web.Areas.GalaxyGate.ViewModels;

namespace HePa.Web.Areas.GalaxyGate.Controllers
{
    [RouteArea("galaxygate")]
    public class HomeController : Controller
    {
    
        [Route("~/galaxy-gate")]
        public  ActionResult Index()
        {
            return View();
        }
    }
}