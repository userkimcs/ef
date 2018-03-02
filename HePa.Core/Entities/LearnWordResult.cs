

using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace HePa.Core.Entities
{
    public class LearnWordResult
    {
        [Key, Column(Order = 0)]
        public string UserId { get; set; }
        [Key, Column(Order = 1)]
        public string WordId { get; set; }
        [Key, Column(Order = 2)]
        public string ClassId { get; set; }
        public bool IsSuccessed { get; set; }
        public Nullable<DateTime> LastUpdated { get; set; }
        public double AchievedScore { get; set; }
        public virtual Word Word { get; set; }
    }
}
