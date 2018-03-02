using HePa.Core.QueryHelpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.LookUp
{
    public interface IGrammarLookUpService
    {
        /// <summary>
        /// Get grammar tree based in alias 
        /// If alias is null, get all roots 
        /// </summary>
        /// <param name="currentNodeAlias"></param>
        /// <returns></returns>
        IList<GrammarElement> GetGrammarTree(string currentNodeAlias = null);
        Task<IList<GrammarElement>> GetGrammarTreeAsync(string currentNodeAlias = null);

        /// <summary>
        /// Get grammar article content based in alias 
        /// </summary>
        /// <param name="alias"></param>
        /// <param name="isEnglish"></param>
        /// <returns></returns>
        GrammarArticleContent GetGrammarArticleContent(string alias, bool? isEnglish = null);
        Task<GrammarArticleContent> GetGrammarArticleContentAsync(string alias, bool? isEnglish = null);
    }
}
