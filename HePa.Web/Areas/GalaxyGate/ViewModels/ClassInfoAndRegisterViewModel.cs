using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HePa.Core.Entities;

namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class ClassInfoAndRegisterViewModel
    {
        // Class info
        public Class ClassInfo { get; set; }
        // Course info
        public Course CourseInfo { get; set; }
        // number of weeks to pass class
        public int NumberOfWeeks { get; set; }
        public bool IsRegistered { get; set; }
        public IList<TodayWord> TodayWords { get; set; }

        // ctor
        public ClassInfoAndRegisterViewModel(Class ClassInfo, Course CourseInfo, IList<TodayWord> TodayWords, bool IsRegistered)
        {
            this.ClassInfo = ClassInfo;
            this.CourseInfo = CourseInfo;
            this.IsRegistered = IsRegistered;
            // if list is not empty, copy data
            if (TodayWords != null)
            {
                this.TodayWords = TodayWords;
            }
            else
            {
                this.TodayWords = new List<TodayWord>();
            }
        }

        // Default ctor
        public ClassInfoAndRegisterViewModel()
        {
            this.NumberOfWeeks = 8;
            this.ClassInfo = new Class();
            this.CourseInfo = new Course();
            this.IsRegistered = false;
            this.TodayWords = new List<TodayWord>();
        }
    }
}