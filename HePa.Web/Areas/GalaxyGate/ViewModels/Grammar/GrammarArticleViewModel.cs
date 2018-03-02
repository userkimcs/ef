using HePa.Core.QueryHelpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.GalaxyGate.ViewModels.Grammar
{
    public class GrammarArticleViewModel
    {
        // content
        public GrammarArticleContent ArticleContent { get; set; }
        // classification tree 
        public IList<GrammarElement> GrammarDictionaryTree { get; set; }

        // ctor 
        public GrammarArticleViewModel(IList<GrammarElement> GrammarDictionaryTree, 
            GrammarArticleContent ArticleContent)
        {
            this.GrammarDictionaryTree = GrammarDictionaryTree;
            this.ArticleContent = ArticleContent;
        }
    }
}