using HePa.Core.Entities.Grammar;
using HePa.Core.QueryHelpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.Admin.ViewModels.GrammarAdminViewModel
{
    public class AddGrammarViewModel
    {
        public GrammarArticle Article { get; set; }
        public IList<GrammarElement> GrammarParents { get; set; }

        public AddGrammarViewModel(IList<GrammarElement> GrammarParents)
        {
            this.GrammarParents = GrammarParents;
        }

        public AddGrammarViewModel()
        {
            // Default
        }
    }
}