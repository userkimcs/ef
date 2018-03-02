using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HePa.Web.Areas.Admin.ViewModels.ClassAdminViewModels
{
    public class CreateClassViewModel
    {
        // required
        [Required]
        public string ClassId { get; set; }
        [Required]
        public string ClassName { get; set; }
        [Required]
        public string Abstract { get; set; }

        // Optional
        public string Image { get; set; }

        public Nullable<DateTime> StartDate { get; set; }
        public Nullable<DateTime> EndDate { get; set; }

        // select course 
        public string CourseId { get; set; }
        public IList<SelectListItem> AvailableCourses { get; set; }

        public CreateClassViewModel(IList<Course> AllCourses)
        {
            AvailableCourses = new List<SelectListItem>();
            foreach (var course in AllCourses)
            {
                SelectListItem item = new SelectListItem
                {
                    Text = course.CourseName,
                    Value = course.Id,
                };
                AvailableCourses.Add(item);
            }
        }

        public CreateClassViewModel()
        {
            // Do nothing
        }
    }
}