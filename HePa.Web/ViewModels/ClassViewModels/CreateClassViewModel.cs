

using System;
namespace HePa.Web.ViewModels.ClassViewModels
{
    public class CreateClassViewModel
    {
        public string ClassName { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string Abstract { get; set; }
        public string Image { get; set; }
    }
}