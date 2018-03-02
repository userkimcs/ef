using HePa.Core.Entities.Grammar;
using HePa.Core.Helpers;
using HePa.Core.QueryHelpers;
using HePa.Data.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.LookUp
{
    public class GrammarEditService : IGrammarEditService
    {
        private readonly IRepository<GrammarArticle> m_grammarArticleRepository;

        public GrammarEditService(IRepository<GrammarArticle> m_grammarArticleRepository)
        {
            this.m_grammarArticleRepository = m_grammarArticleRepository;
        }



        public IList<GrammarElement> GetListGrammar()
        {
            return this.m_grammarArticleRepository.Select()
                .Select(t => new GrammarElement { Id = t.Id, Title = t.TitleInVietnamese})
                .ToList();
        }

        public ServiceResult InsertGrammar(GrammarArticle grammar)
        {
            try
            {
                this.m_grammarArticleRepository.Insert(grammar);
                this.m_grammarArticleRepository.SaveChanges();
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
        }

        public ServiceResult EditGrammar(GrammarArticle grammar)
        {
            try
            {
                this.m_grammarArticleRepository.Update(grammar);
                this.m_grammarArticleRepository.SaveChanges();
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
        }


        public GrammarArticle GetGrammarArticle(string id)
        {
            return this.m_grammarArticleRepository.Select(t => t.Id == id).FirstOrDefault();
        }
    }
}
