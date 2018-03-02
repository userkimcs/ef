using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.History.ViewModels
{
    public class ClassHistoryViewModel
    {
        public Class MyClass { get; set; }
        public IList<LearnWordHistory> WordHistory { get; set; }
        public IList<LearnWordResult> WordResult { get; set; }
        public ClassHistoryViewModel(Class MyClass, IList<LearnWordHistory> wordHistory, IList<LearnWordResult> wordResult)
        {
            this.MyClass = MyClass;
            this.WordHistory = wordHistory;
            this.WordResult = wordResult;
        }
        public ClassHistoryViewModel(Class MyClass)
        {
            this.MyClass = MyClass;
            this.WordHistory = new List<LearnWordHistory>();
            this.WordResult = new List<LearnWordResult>();
        } 
    }
}