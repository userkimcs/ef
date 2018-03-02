
using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
namespace HePa.Service.Services
{
    public interface IExampleSentanceService
    {
        List<WordExampleSentence> GetExamples(string wordId);
        void CreateNewExample(WordExampleSentence example);
        void UpdateExample(WordExampleSentence example);
        void DeleteExample(WordExampleSentence example);

        // Async
        //
        Task<List<WordExampleSentence>> GetExamplesAsync(string wordId);
        Task CreateNewExampleAsync(WordExampleSentence example);
        Task UpdateExampleAsync(WordExampleSentence example);
        Task DeleteExampleAsync(WordExampleSentence example);

        Task<bool> InsertListOfExamaplesAsync(IList<WordExampleSentence> s);
    }
}
