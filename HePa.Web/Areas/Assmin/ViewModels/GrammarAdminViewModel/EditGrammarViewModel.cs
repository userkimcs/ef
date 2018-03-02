using HePa.Core.Entities.Grammar;
using HePa.Core.QueryHelpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.Admin.ViewModels.GrammarAdminViewModel
{
    public class EditGrammarViewModel
    {
        
        public GrammarArticle Article { get; set; }
        public IList<GrammarElement> GrammarParents { get; set; }

        public EditGrammarViewModel(GrammarArticle Article, IList<GrammarElement> GrammarParents)
        {
            this.Article = Article;
            this.GrammarParents = GrammarParents;
        }

        public EditGrammarViewModel()
        {
            // Default
        }
    }
}