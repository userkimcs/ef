using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HePa.Core.Entities
{
    public class UserGoal : BaseEntity
    {
        [Key, Column(Order = 0)]
        public string UserId { get; set; }
        [Key, Column(Order = 1)]
        public string ClassId { get; set; }

        public double NumberOfDays { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }
        public Nullable<DateTime> LastChanged { get; set; }
        public Nullable<DateTime> LastActive { get; set; }
        // Update 1 
        public string CourseId { get; set; }
        // Lazy loading
        //
        public virtual ApplicationUser User { get; set; }
        public virtual Class Class { get; set; }
        public virtual Course Course { get; set; }
    }
}
