using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HePa.Core.Entities;

namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class ClassSummaryViewModel
    {
        //Class
        public Class Class { get; set; }
        // check if registered 
        public bool IsRegistered { get; set; }

        //Get from Goal
        public int RemainingDays { get; set; }

        //Get from Result
        public int AchievingAmount { get; set; }

        //Get from TodayWord
        public int TodayWordAmount { get; set; }
        public int PassedTodayWordAmount { get; set; }

        public ClassSummaryViewModel(Class registedClass, bool IsRegistered,
            int remainingDays, int achievingAmount, int todayWordAmount, int passedTodayWordAmount)
        {
            this.Class = registedClass;
            if (IsRegistered == true)
            {
                this.IsRegistered = IsRegistered;
                this.RemainingDays = remainingDays;
                this.AchievingAmount = achievingAmount;
                this.TodayWordAmount = todayWordAmount;
                this.PassedTodayWordAmount = passedTodayWordAmount;
            }
            else
            {
                // do nothing
            }
        }
        public ClassSummaryViewModel()
        {
            this.Class = new Class();
            this.RemainingDays = 0;
            this.AchievingAmount = 0;
        }
    }
}