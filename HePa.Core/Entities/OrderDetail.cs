using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Entities
{
    public class OrderDetail : BaseEntity
    {
        [Key, Column(Order = 0)]
        public string CustomerId { get; set; }
        [Key, Column(Order = 1)]
        public string HepaProductId { get; set; }
        public int NumberOfItems { get; set; }
        public string CouponCodeId { get; set; }
        public string KindOfPurchase { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }
        // lazy loading
        public Customer Customer { get; set; }
        public HepaProduct HepaProduct { get; set; }
        public CouponCode CouponCode { get; set; }
    }
}
