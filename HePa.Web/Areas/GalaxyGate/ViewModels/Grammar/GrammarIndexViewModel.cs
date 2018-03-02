using HePa.Core.QueryHelpers;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.GalaxyGate.ViewModels.Grammar
{
    public class GrammarIndexViewModel
    {
        // the left containts grammar tree
        public IList<GrammarElement> GrammarTree { get; set; }
        // search box 
        [Required]
        public string SearchKey { get; set; }
        public GrammarIndexViewModel(IList<GrammarElement> GrammarTree)
        {
            this.GrammarTree = GrammarTree;
        }
    }
}