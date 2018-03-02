using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HePa.Core.Entities
{
    public class Currency_User
    {
        [Key]
        [Column(Order = 0)]
        public string UserId { get; set; }

        [Key]
        [Column(Order = 1)]
        public string CurrencyId { get; set; }

        public int Amount { get; set; }

        public virtual ApplicationUser User { get; set; }
        public virtual Currency Currency { get; set; }
    }
}
