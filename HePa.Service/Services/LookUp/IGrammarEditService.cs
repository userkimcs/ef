using HePa.Core.Entities.Grammar;
using HePa.Core.Helpers;
using HePa.Core.QueryHelpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.LookUp
{
    public interface IGrammarEditService
    {
        /// <summary>
        /// Get list of all grammar
        /// </summary>
        /// <returns>list of grammar elements include id, title, alias</returns>
        IList<GrammarElement> GetListGrammar();
        ServiceResult InsertGrammar(GrammarArticle grammar);
        ServiceResult EditGrammar(GrammarArticle grammar);
        GrammarArticle GetGrammarArticle(string id);

    }
}
