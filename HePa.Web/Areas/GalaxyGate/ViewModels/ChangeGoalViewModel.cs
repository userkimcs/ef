using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations;
namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class ChangeGoalViewModel
    {
        public Class Class { get; set; }
        [Required(ErrorMessage = "Bạn chưa điền nội dung")]
        public double NumberOfDays { get; set; }

        public ChangeGoalViewModel()
        {
            Class = new Class();
        }

        public ChangeGoalViewModel(UserGoal goal)
        {
            this.Class = goal.Class;
            this.NumberOfDays = goal.NumberOfDays;
        }
    }
}