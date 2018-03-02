using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Service.Services;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.Areas.Admin
{
    [RouteArea("assmin")]
    [RoutePrefix("word-manager")]
    [Authorize(Roles = "Admin")]
    public class WordController : Controller
    {
        private IWordService m_wordService;
        private IClassService m_classService;
        private IExampleSentanceService m_exampleService;
        public WordController(IWordService m_wordService, IClassService m_classService,
            IExampleSentanceService m_exampleService)
        {
            this.m_wordService = m_wordService;
            this.m_classService = m_classService;
            this.m_exampleService = m_exampleService;
        }
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        [Route("inserts")]
        public ActionResult InsertWords()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [Route("inserts")]
        public async Task<ActionResult> InsertWords(HttpPostedFileBase file)
        {
            if (file != null && file.ContentLength > 0)
            {
                MemoryStream target = new MemoryStream();
                file.InputStream.CopyTo(target);
                byte[] data = target.ToArray();
                var result = System.Text.Encoding.UTF8.GetString(data);
                string[] content = result.Split(new string[] { "\r\n", "\n" }, StringSplitOptions.None);
                //get class id
                string classID = content[0].Trim();
                //check classId existed
                var findClassId = m_classService.GetClass(classID);
                if (findClassId != null)
                {
                    IList<Word> words = new List<Word>();
                    IList<Word> wordList = new List<Word>();
                    IList<WordExampleSentence> exampleList = new List<WordExampleSentence>();
                    // split lines and get word components
                    for (int i = 2; i < content.Length; i++)
                    {
                        //if linelenght is greater than 10 characters
                        if (content[i].Length > 10)
                        {
                            string[] splited = content[i].Split('\t');
                            //stt	word	level	kind	mean	ipa	example1	example2	example_mean1	example_mean2   img audio                    //Create new word and add to word list
                            string wordId = splited[0].Trim();
                            string aWord = splited[1].Trim();
                            string ipa = splited[5].Trim();
                            string meaning = splited[4].Trim();
                            string audio = "/dist/hp/audio/" + aWord + ".MP3";
                            string img = "/dist/hp/img/" + aWord + ".JPG";

                            Word findResult = m_wordService.GetWord(wordId);
                            if (findResult == null)
                            {
                                Word w1 = EntityFactory.CreateWord(wordId, classID, aWord, ipa, meaning, audio, img, Word.ToComplexity(splited[2]), splited[3]);
                                wordList.Add(w1);

                                string audioEx1 = "/dist/hp/audio/" + aWord + " (1).MP3";
                                string audioEx2 = "/dist/hp/audio/" + aWord + " (2).MP3";
                                WordExampleSentence ex1 = EntityFactory.CreateExampleSentence(Guid.NewGuid().ToString(), w1.Id, splited[6], splited[8], audioEx1);
                                WordExampleSentence ex2 = EntityFactory.CreateExampleSentence(Guid.NewGuid().ToString(), w1.Id, splited[7], splited[9], audioEx2);
                                exampleList.Add(ex1);
                                exampleList.Add(ex2);
                            }
                            else
                            {
                                string audioEx1 = "/dist/hp/audio/" + aWord + " (1).MP3";
                                string audioEx2 = "/dist/hp/audio/" + aWord + " (2).MP3";
                                WordExampleSentence ex1 = EntityFactory.CreateExampleSentence(Guid.NewGuid().ToString(), findResult.Id, splited[6], splited[8], audioEx1);
                                WordExampleSentence ex2 = EntityFactory.CreateExampleSentence(Guid.NewGuid().ToString(), findResult.Id, splited[7], splited[9], audioEx2);
                                exampleList.Add(ex1);
                                exampleList.Add(ex2);
                            }
                        }
                        else
                        {
                            //DO NOTHING
                        }
                    }
                    await m_wordService.InsertListOfWords(wordList);
                    await m_exampleService.InsertListOfExamaplesAsync(exampleList);                  
                    return new JsonResult { Data = "Thành công" };
                }
                else
                {
                    return new JsonResult { Data = "Chưa tạo lớp" };
                }
            }
            return new JsonResult { Data = "Failed" };
        }
    
        public bool InsertClass()
        {
            Class c = new Class();
            c.Id = "2";
            c.Abstract = "";
            c.ClassName = "2";
            c.CourseId = "1";
            c.CreatedByUserId = "b11dcc5b-be63-4dbd-8124-3bcc0d55a142";
            c.TotalLearns = 1;
            c.TotalLearns = 1;
            c.NumberOfGrammars = 1;
            c.NumberOfPhrases = 1;
            c.NumberOfPronunciations = 1;
            c.NumberOfWeeks = 1;
            c.NumberOfWords = 1;
            c.IsMaintained = false;
            m_classService.CreateNewClass(c);
            return true;
        }


        #region insert a word 
        public ActionResult InsertWord()
        {
            return View();
        }

        public ActionResult InsertWord(int i)
        {
            return View();
        }
        #endregion 
    }
}