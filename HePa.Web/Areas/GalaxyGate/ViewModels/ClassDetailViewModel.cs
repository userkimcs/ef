using HePa.Core.Entities;
using System.Collections.Generic;


namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class ClassDetailViewModel
    {
        public Class CurrentClass { get; set; }
        public IList<Class> OtherClasses { get; set; }
        public ClassDetailViewModel()
        {
            CurrentClass = new Class();
            OtherClasses = new List<Class>();
        }

        public ClassDetailViewModel(Class currentClass, IList<Class> otherClasses)
        {
            // do nothing
        }
    }
}