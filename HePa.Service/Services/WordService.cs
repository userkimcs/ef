using HePa.Data.Context;
using HePa.Service.Services;
using HePa.Core.Entities;
using System;
using HePa.Core.Processing.Models.Documents;
using System.Linq;
using System.Threading.Tasks;

namespace HePa.Service.Services
{
    public class WordService : IWordService
    {
        private readonly IRepository<Word> m_wordRepository;

        public WordService(IRepository<Word> m_wordRepository)
        {
            this.m_wordRepository = m_wordRepository;
        }

        public System.Collections.Generic.List<Word> GetWords()
        {
            // Find all words 
            return m_wordRepository.Find().ToList();
        }

        public System.Collections.Generic.List<Word> GetWords(string classId)
        {
            // Find all words where ClassBestringId equals to parameter
            return m_wordRepository.FindEntities(m => m.ClassBelongId == classId).ToList();
        }

        public Word GetWord(string wordId)
        {
            // Find word matches id
            return m_wordRepository.FindEntity(m => m.Id == wordId);
        }

        public Class GetClass(string wordId)
        {
            throw new NotImplementedException();
        }

        public void CreateNewWord(string classId, Word w)
        {
            // Assign class Id
            w.ClassBelongId = classId;
            // Insert into table Word
            m_wordRepository.Insert(w);
            this.m_wordRepository.SaveChanges();
        }

        public void CreateNewWord(Word w)
        {
            // Insert into table Word
            m_wordRepository.Insert(w);
            this.m_wordRepository.SaveChanges();
        }

        public void UpdateWord(Word w)
        {
            // Update word
            m_wordRepository.Update(w);
        }

        public void DeleteWord(Word w)
        {
            // Delete word
            m_wordRepository.Delete(w);
        }

        // Working 5 steps 
        // Return score user gets from word 
        public double LearnWord(Word w, string inputWord, string inputSentance)
        {
            // Default 2 points 
            double score = 2.0;
            // Compare word 
            if (inputWord == w.aWord)
            {
                score = score + 2.0;
            }
            else
            {
                // Do nothing
            }
            return score;
        }


        public string GetWordString(string wordId)
        {
            return m_wordRepository.FindEntity(t => t.Id == wordId).aWord;
        }


        public string GetWordId(string wordId)
        {
            return m_wordRepository.FindEntity(t => t.Id == wordId).Id.ToString();
        }




        public async System.Threading.Tasks.Task<System.Collections.Generic.List<Word>> GetWordsAsync()
        {
            return await Task.Run(() => GetWords());
        }

        public async System.Threading.Tasks.Task<System.Collections.Generic.List<Word>> GetWordsAsync(string classId)
        {
            return await Task.Run(() => GetWords(classId));
        }

        public async System.Threading.Tasks.Task<Word> GetWordAsync(string wordId)
        {
            return await Task.Run(() => GetWord(wordId));
        }

        public async System.Threading.Tasks.Task<Class> GetClassAsync(string wordId)
        {
            return await Task.Run(() => GetClass(wordId));
        }

        public async System.Threading.Tasks.Task CreateNewWordAsync(string classId, Word w)
        {
            await Task.Run(() => CreateNewWord(classId, w));
        }

        public async System.Threading.Tasks.Task CreateNewWordAsync(Word w)
        {
            await Task.Run(() => CreateNewWord(w));
        }

        public async System.Threading.Tasks.Task UpdateWordAsync(Word w)
        {
            await Task.Run(() => UpdateWord(w));
        }

        public async System.Threading.Tasks.Task DeleteWordAsync(Word w)
        {
            await Task.Run(() => DeleteWord(w));
        }

        public async System.Threading.Tasks.Task<double>
            LearnWordAsync(Word w, string inputWord, string inputSentance)
        {
            return await Task.Run(() => LearnWord(w, inputWord, inputSentance));
        }

        public async System.Threading.Tasks.Task<string> GetWordStringAsync(string wordId)
        {
            return await Task.Run(() => GetWordString(wordId));
        }

        public async System.Threading.Tasks.Task<string> GetWordIdAsync(string wordId)
        {
            return await Task.Run(() => GetWordId(wordId));
        }


        public async Task<bool> InsertListOfWords(System.Collections.Generic.IList<Word> words)
        {
            try
            {
                foreach (Word w in words)
                {
                    await m_wordRepository.InsertAsync(w);
                }
                await m_wordRepository.SaveChangesAsync();
                return true;
            }
            catch
            {
                return false;
            }
        }


    }
}
