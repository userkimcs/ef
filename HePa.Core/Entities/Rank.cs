

using System;
using System.Collections.Generic;
namespace HePa.Core.Entities
{
    public class Rank : BaseEntity
    {
        public string RankName { get; set; }
        public double RankExp { get; set; }
        public string RankIcon { get; set; }
        public int KindOfRank { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }

        public ICollection<Rank_User> Rank_User { get; set; }
    }
}
