// using AttributeRouting.Web.Mvc;
using HePa.Core.QueryHelpers;
using HePa.Service.Services.LookUp;
using HePa.Web.Areas.GalaxyGate.ViewModels.Grammar;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.Areas.GalaxyGate.Controllers
{
    [RouteArea("galaxygate")]
    public class GrammarLookUpController : Controller
    {
        // create service 
        private IGrammarLookUpService m_grammarLookUpService;
        public GrammarLookUpController(IGrammarLookUpService m_grammarLookUpService)
        {
            this.m_grammarLookUpService = m_grammarLookUpService;
        }
        // GET: galaxy-gate/grammar
        // Grammar default roots
        [Route("~/galaxy-gate/grammar.html")]
        public async Task<ActionResult> Index()
        {
            // get all roots 
            IList<GrammarElement> grammarDictionary = await this.m_grammarLookUpService.GetGrammarTreeAsync();
            // create view model
            GrammarIndexViewModel model = new GrammarIndexViewModel(grammarDictionary);
            // Return view 
            return View(model);
        }

        [Route("~/galaxy-gate/grammar/{alias}.html")]
        public async Task<ActionResult> GrammarArticleDetails(string alias)
        {
            // get tree 
            IList<GrammarElement> grammarDictionary = await this.m_grammarLookUpService.GetGrammarTreeAsync(alias);
            // get grammar content 
            GrammarArticleContent article = await this.m_grammarLookUpService.GetGrammarArticleContentAsync(alias);
            // create view model
            GrammarArticleViewModel model = new GrammarArticleViewModel(grammarDictionary, article);
            // Return view 
            return View(model);
        }

        [Route("~/galaxy-gate/grammar/update-tree{alias}")]
        [HttpGet]
        public async Task<ActionResult> UpdateTreeView(string alias)
        {
            IList<GrammarElement> tree = await this.m_grammarLookUpService.GetGrammarTreeAsync(alias);
            return PartialView("_GrammarTreePartial", tree);
        }

    }
}