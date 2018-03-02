

using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
namespace HePa.Service.Services
{
    public interface IWordService
    {
        // Get all words 
        List<Word> GetWords();
        // Get all words in a class 
        List<Word> GetWords(string classId);
        // Get Word by Id 
        Word GetWord(string wordId);
        // Get class of a Word 
        Class GetClass(string wordId);
        // Create new Word
        void CreateNewWord(string classId, Word w);
        void CreateNewWord(Word w);
        // Update a Word
        void UpdateWord(Word w);
        // Delete a Word
        void DeleteWord(Word w);
        // Learn a word 
        double LearnWord(Word w, string inputWord, string inputSentance);

        string GetWordString(string wordId);
        string GetWordId(string wordId);

        // Async method 
        // 
        Task<List<Word>> GetWordsAsync();
        Task<List<Word>> GetWordsAsync(string classId);
        Task<Word> GetWordAsync(string wordId);
        Task<Class> GetClassAsync(string wordId);
        Task CreateNewWordAsync(string classId, Word w);
        Task CreateNewWordAsync(Word w);
        Task<bool> InsertListOfWords(IList<Word> words);
        Task UpdateWordAsync(Word w);
        Task DeleteWordAsync(Word w);
        Task<double> LearnWordAsync(Word w, string inputWord, string inputSentance);
        Task<string> GetWordStringAsync(string wordId);
        Task<string> GetWordIdAsync(string wordId);
    }
}
