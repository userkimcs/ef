using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Entities
{
    public class CouponCode : BaseEntity
    {
        public double SaleOffAmount { get; set; }
        public int Type { get; set; } //4 kind of voucher: 1: xtime, 2: +time,3: -percent, 4: -directly to price
        public string Desciption { get; set; }
        public int LimitedCondition { get; set; }
        public int UsageAmount { get; set; }
        public Nullable<DateTime> CreateDate { get; set; }
        public Nullable<DateTime> EndDate { get; set; }

        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
