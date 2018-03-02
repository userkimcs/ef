using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.GalaxyGate.ViewModels.Grammar
{
    public class GrammarTreeViewViewModel
    {
        public string Id { get; set; }
        public string Title { get; set; }
        public virtual ICollection<GrammarTreeViewViewModel> ChildrenGrammar { get; set; }

        public GrammarTreeViewViewModel()
        {
            this.ChildrenGrammar = new HashSet<GrammarTreeViewViewModel>();
        }
    }
}