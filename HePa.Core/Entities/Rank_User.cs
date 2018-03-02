using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Entities
{
    public class Rank_User 
    {
        [Key]
        [Column(Order = 0)]
        public string UserId { get; set; }
        [Key]
        [Column(Order = 1)]
        public string RankId { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }

        public virtual ApplicationUser ApplicationUser { get; set; }
        public virtual Rank Rank { get; set; }
    }
}
