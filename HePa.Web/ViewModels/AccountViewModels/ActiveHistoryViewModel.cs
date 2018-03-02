using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.ViewModels.AccountViewModels
{
    public class ActiveHistoryViewModel
    {
        public IList<HepaPassport> Passports { get; set; }
        public int ExpDays { get; set; }
        public Nullable<DateTime> ExpDate { get; set; }

        public ActiveHistoryViewModel()
        {

        }
        public ActiveHistoryViewModel(IList<HepaPassport> passports, int expDays, Nullable<DateTime> expDate)
        {
            this.Passports = passports;
            this.ExpDays = expDays;
            this.ExpDate = expDate;
        }
    }
}