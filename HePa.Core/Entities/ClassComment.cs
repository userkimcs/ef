

using System;
namespace HePa.Core.Entities
{
    public class ClassComment : BaseEntity
    {
        public string CommentContent { get; set; }
        public int Votes { get; set; }
        public int CommentParent { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }

        // Class 
        public string ClassId { get; set; }
        public virtual Class Class { get; set; }
        // Account
        public string UserId { get; set; }
        public virtual ApplicationUser User { get; set; }
    }
}
