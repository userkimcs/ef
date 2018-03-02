using HePa.Core.Entities.Grammar;
using HePa.Core.Helpers;
using HePa.Service.Services.LookUp;
using HePa.Web.Areas.Admin.ViewModels.GrammarAdminViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.Areas.Admin.Controllers
{
    [RouteArea("assmin")]
    [RoutePrefix("Grammar")]
    [Authorize(Roles = "Admin")]
    public class GrammarAdminController : Controller
    {
        private IGrammarEditService m_grammarEditService;
        public GrammarAdminController(IGrammarEditService m_grammarEditService)
        {
            this.m_grammarEditService = m_grammarEditService;
        }

        /// <summary>
        /// get list grammars
        /// </summary>
        /// <returns></returns>
        [Route("")]
        public ActionResult Index()
        {
            var listGrammar = this.m_grammarEditService.GetListGrammar();
            return View(listGrammar);
        }
        #region create
        // GET 
        [HttpGet]
        [Route("Create")]
        public ActionResult Create()
        {
            var listGrammar = this.m_grammarEditService.GetListGrammar();
            AddGrammarViewModel model = new AddGrammarViewModel(listGrammar);
            return View(model);
        }

        // POST
        [Route("Create")]
        [ValidateAntiForgeryToken]
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(AddGrammarViewModel model)
        {
            // Create grammar 
            GrammarArticle article = EntityFactory
                .CreateGrammarArticle(model.Article.TitleInVietnamese, model.Article.TitleInEnglish, 
                model.Article.Alias, 
                model.Article.TextInVietnamese, model.Article.TextInEnglish, 
                model.Article.ParentId, model.Article.IsLeaf);
            this.m_grammarEditService.InsertGrammar(article);
            return RedirectToAction("Index", "GrammarAdmin", new { area = "Assmin" });
        }
        #endregion 

        #region Edit
        // GET 
        [HttpGet]
        [Route("Edit/{id}")]
        public ActionResult Edit(string id)
        {
            var article = this.m_grammarEditService.GetGrammarArticle(id);
            var listGrammar = this.m_grammarEditService.GetListGrammar();
            EditGrammarViewModel model = new EditGrammarViewModel(article, listGrammar);
            return View(model);
        }

        // POST
        [Route("Edit/{id}")]
        [ValidateAntiForgeryToken]
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(AddGrammarViewModel model)
        {
            // update
            this.m_grammarEditService.EditGrammar(model.Article);
            return RedirectToAction("Index", "GrammarAdmin", new { area = "Assmin" });
        }
        #endregion 
    }
}