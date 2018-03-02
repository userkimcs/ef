

using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace HePa.Core.Entities
{
    public class TodayWord
    {
        [Key, Column(Order = 0)]
        public string UserId { get; set; }
        [Key, Column(Order = 1)]
        public string ClassId { get; set; }
        [Key, Column(Order = 2)]
        public string WordId { get; set; }
        public Word Word { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }
        public bool IsLearned { get; set; }       //check if this word was learned      
        public bool IsPassed { get; set; }          //Check if score is >= 6
        // new properties update Oct 07
        public int ArchivedScore { get; set; }
    }
}
