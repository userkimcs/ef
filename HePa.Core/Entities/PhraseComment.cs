using System;
using System.Collections.Generic;

namespace HePa.Core.Entities
{
    public class PhraseComment : BaseEntity
    {
        public string CommentContent { get; set; }
        public int Votes { get; set; }
        public int CommentParent { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }

        // lazing loading 
        //
        // Phrase 
        public virtual Phrase Phrase { get; set; }
        public string PhraseId { get; set; }
        // Account
        public string UserId { get; set; }
        public virtual ApplicationUser User { get; set; }
    }
}
