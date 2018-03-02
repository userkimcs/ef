using HePa.Core.Entities;
using System.Collections.Generic;

namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class CourseViewModel
    {
        // List of courses
        public IList<ClassSummaryViewModel> RegisteredClasses { get; set; }
        public Course Course { get; set; }

        /// <summary>
        /// CTOR
        /// </summary>
        /// <param name="registered"></param>
        /// <param name="recommended"></param>
        public CourseViewModel(IList<ClassSummaryViewModel> registered, Course Course)
        {
            RegisteredClasses = registered;
            this.Course = Course;
        }

        /// <summary>
        /// Default CTOR
        /// </summary>
        public CourseViewModel()
        {
            RegisteredClasses = new List<ClassSummaryViewModel>();
        }
    }
}