using System;
using HePa.Core.Entities;
using System.Collections.Generic;

namespace HePa.Web.Areas.History.ViewModels
{
    public class WordHistoryViewModel
    {
        public string ClassName { get; set; }
        public IList<LearnWordHistory> ListOfWords { get; set; }

        public WordHistoryViewModel(string className, IList<LearnWordHistory> listOfWords)
        {
            this.ClassName = className;
            this.ListOfWords = listOfWords;
        }
    }
}