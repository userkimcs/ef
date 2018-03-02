using HePa.Core.Entities.Grammar;
using HePa.Core.QueryHelpers;
using HePa.Data.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.LookUp
{
    public class GrammarLookUpService : IGrammarLookUpService
    {
        private readonly IRepository<GrammarArticle> m_grammarArticleRepository;
        public GrammarLookUpService(IRepository<GrammarArticle> m_grammarArticleRepository)
        {
            this.m_grammarArticleRepository = m_grammarArticleRepository;
        }
        // not implement yet
        #region Helpers
        /// <summary>
        /// Get direct paths from root to current node
        /// </summary>
        /// <param name="availables"></param>
        /// <param name="currentId"></param>
        /// <returns></returns>
        IList<string> GetAllParentPaths(IList<GrammarArticle> availables, string alias)
        {
            // get current node
            var currentGrammar = availables.Where(t => t.Alias == alias).FirstOrDefault();
            // create list results
            IList<string> results = new List<string>();
            results.Add(currentGrammar.Id);
            string parentId = currentGrammar.ParentId;
            // loop to search tree
            // loop from bottom to top
            while (parentId != "0")
            {
                var grammar = availables.Where(t => t.Id == parentId).FirstOrDefault();
                parentId = grammar.ParentId;
                // to the first  
                results.Insert(0, grammar.Id);
            }
            // return list of results
            return results;
        }

        // OK
        IList<GrammarArticle> GetAllChilds(IList<GrammarArticle> availables, string parentId)
        {
            return availables.Where(t => t.ParentId == parentId).ToList();
        }
        #endregion 

        #region Get grammar tree
        public IList<GrammarElement> GetGrammarTree(string currentNodeAlias = null)
        {
            // if null, return roots
            if (currentNodeAlias == null)
            {
                // get subroots 
                IList<GrammarElement> subroots = this.m_grammarArticleRepository.Select().Where(t => t.ParentId == "0")
                    .Select(t => new GrammarElement { Id = t.Id, Title = t.TitleInVietnamese, Index = t.Index, Alias = t.Alias }).ToList();
                return subroots;
            }
            else
            {
                DateTime start = DateTime.Now;
                // create list tree 
                IList<GrammarElement> tree = new List<GrammarElement>();
                // get all grammar
                var allGrammars = this.m_grammarArticleRepository.Select().ToList();
                // get all direct paths
                IList<string> paths = GetAllParentPaths(allGrammars, currentNodeAlias);
                // get subroots 
                IList<GrammarElement> subroots = allGrammars.Where(t => t.ParentId == "0")
                    .Select(t => new GrammarElement { Id = t.Id, Title = t.TitleInVietnamese, Index = t.Index, Alias = t.Alias }).ToList();
                // add subroot
                tree = tree.Concat(subroots).ToList();
                // get current node
                for (int i = 0; i < paths.Count; i++)
                {
                    // get current node
                    var currentNode = subroots.Where(t => t.Id == paths[i]).FirstOrDefault();
                    // get all childs
                    subroots = GetAllChilds(allGrammars, currentNode.Id).Select(t => new GrammarElement
                    {
                        Id = t.Id,
                        Parent = currentNode,
                        Title = t.TitleInVietnamese,
                        Index = t.Index,
                        Alias = t.Alias
                    }).ToList();
                    tree = tree.Concat(subroots).ToList();
                }
                System.Diagnostics.Debug.WriteLine("Get tree: " + (DateTime.Now - start));
                return tree;
            }
        }

        public async Task<IList<GrammarElement>> GetGrammarTreeAsync(string currentNodeAlias = null)
        {
            return await Task.Run(() => GetGrammarTree(currentNodeAlias));
        }
        #endregion 
    

        public GrammarArticleContent GetGrammarArticleContent(string alias, bool? isEnglish = null)
        {
            // if vietnamese 
            if (isEnglish == null)
            {
                return this.m_grammarArticleRepository.Select(t => t.Alias == alias)
                    .Select(t => new GrammarArticleContent
                    {
                        Alias = t.Alias, // select alias 
                        Id = t.Id, // id 
                        Text = t.TextInVietnamese, // text content 
                        Title = t.TitleInVietnamese, // title 
                        VisitCounter = t.VisitCounter, // visit counter 
                    }).FirstOrDefault();
            }
            // if english
            else
            {
                return this.m_grammarArticleRepository.Select(t => t.Alias == alias)
                    .Select(t => new GrammarArticleContent
                    {
                        Alias = t.Alias, // alias 
                        Id = t.Id, // id for search 
                        Text = t.TextInEnglish, // text in english 
                        Title = t.TitleInEnglish, // english title 
                        VisitCounter = t.VisitCounter, // visit counter 
                    }).FirstOrDefault();
            }
        }

        public async Task<GrammarArticleContent> GetGrammarArticleContentAsync(string alias, bool? isEnglish = null)
        {
            return await Task.Run(() => GetGrammarArticleContent(alias, isEnglish));
        }
    }
}
