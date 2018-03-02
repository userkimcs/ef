using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Entities
{
    public class WordComment : BaseEntity
    {
        public string CommentContent { get; set; }
        public string CommentParent { get; set; }
        public int Votes { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }
        public int NumberOfReplies { get; set; }

        public string WordId { get; set; }
        // Account
        public string UserId { get; set; }

        public virtual ApplicationUser User { get; set; }
        // Word 
        public virtual Word Word { get; set; }
        // Users liked
        public ICollection<UserLikedWordComment> WordLikedUsers { get; set; }
    }
}