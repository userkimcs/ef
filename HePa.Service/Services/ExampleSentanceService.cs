
using System.Linq;
using HePa.Data.Context;
using HePa.Service.Services;
using HePa.Core.Entities;
using System;
using System.Threading.Tasks;
using System.Collections.Generic;
namespace HePa.Service.Services
{
    public class ExampleSentanceService : IExampleSentanceService
    {
        private readonly IRepository<WordExampleSentence> m_exampleSentanceRepository;

        public ExampleSentanceService(IRepository<WordExampleSentence> m_exampleSentanceRepository)
        {
            this.m_exampleSentanceRepository = m_exampleSentanceRepository;
        }

        // Implement 

        // Get all example of word 
        public System.Collections.Generic.List<Core.Entities.WordExampleSentence> GetExamples(string wordId)
        {
            return m_exampleSentanceRepository.FindEntities(m => m.WordId == wordId).ToList();
        }

        public void CreateNewExample(Core.Entities.WordExampleSentence example)
        {
            m_exampleSentanceRepository.Insert(example);
            this.m_exampleSentanceRepository.SaveChanges();
        }

        public void UpdateExample(Core.Entities.WordExampleSentence example)
        {
            m_exampleSentanceRepository.Update(example);
        }

        public void DeleteExample(Core.Entities.WordExampleSentence example)
        {
            m_exampleSentanceRepository.Delete(example);
        }


        public System.Threading.Tasks.Task<System.Collections.Generic.List<WordExampleSentence>> GetExamplesAsync(string wordId)
        {
            throw new System.NotImplementedException();
        }

        public System.Threading.Tasks.Task CreateNewExampleAsync(WordExampleSentence example)
        {
            throw new System.NotImplementedException();
        }

        public System.Threading.Tasks.Task UpdateExampleAsync(WordExampleSentence example)
        {
            throw new System.NotImplementedException();
        }

        public System.Threading.Tasks.Task DeleteExampleAsync(WordExampleSentence example)
        {
            throw new System.NotImplementedException();
        }



        public async Task<bool> InsertListOfExamaplesAsync(IList<WordExampleSentence> s)
        {
            foreach (WordExampleSentence sentence in s)
            {
                var result = m_exampleSentanceRepository.FindEntity(t => t.Id == sentence.Id);
                if (result == null)
                {
                    await m_exampleSentanceRepository.InsertAsync(sentence);
                }
                else
                {
                    await m_exampleSentanceRepository.UpdateAsync(sentence);
                }
            }
            await m_exampleSentanceRepository.SaveChangesAsync();
            return true;
        }
    }
}
