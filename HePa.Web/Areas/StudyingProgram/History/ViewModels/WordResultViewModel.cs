using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HePa.Core.Entities;

namespace HePa.Web.Areas.History.ViewModels
{
    public class WordResultViewModel
    {
        public Word Word { get; set; }
        public LearnWordResult LearnWordResult { get; set; }
    }

    public class WordResultsViewModel
    {
        public IList<WordResultViewModel> WordResults { get; set; }

        public WordResultsViewModel()
        {
            this.WordResults = new List<WordResultViewModel>();
        }
        public WordResultsViewModel(IList<LearnWordResult> results)
        {
            this.WordResults = new List<WordResultViewModel>();
            foreach(var r in results) {
                var wordResult = new WordResultViewModel()
                {
                    Word = r.Word,
                    LearnWordResult = r,
                };
                WordResults.Add(wordResult);
            }
        }
    }
}