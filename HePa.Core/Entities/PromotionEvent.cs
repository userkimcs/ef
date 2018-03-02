using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace HePa.Core.Entities
{
    public class PromotionEvent : BaseEntity
    {
        [Required]
        public string Name { get; set; }
        public int Type { get; set; }  //3 kind of voucher: 1: xtime, 2: +time,3: -percent, 4: -directly to price
        public int Value { get; set; }
        public string Desciption { get; set; }
        public int LimitedCondition { get; set; }
        public Nullable<DateTime> CreateDate { get; set; }    
        public Nullable<DateTime> EndDate { get; set; }
    }
}
