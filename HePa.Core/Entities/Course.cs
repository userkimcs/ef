using System;
using System.Collections.Generic;

namespace HePa.Core.Entities
{
    public class Course : BaseEntity
    {
        public string CourseName { get; set; }
        public Nullable<DateTime> StartDate { get; set; }
        public Nullable<DateTime> EndDate { get; set; }
        public string Abstract { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }
        public int TotalLikes { get; set; }
        public string Image { get; set; }
        public int NumberOfWords { get; set; }
        public int NumberOfPhrases { get; set; }
        public int NumberOfGrammars { get; set; }
        public int NumberOfPronunciations { get; set; }

        // Lazy loading
        public  ICollection<Class> ContentedClasses { get; set; }
        // User 
        public string CreatedUserId { get; set; }
        public  ApplicationUser CreatedUser { get; set; }
        public  ICollection<UserGoal> RegisteredUsers { get; set; }
    }
}
