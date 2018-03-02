
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hepa.SaleManageSystem.Models
{
    public class Order : BaseEntity
    {
        public string CustomerId { get; set; }
        public string OrderDetailId { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }
        public virtual ICollection<OrderDetailQL> OrderDetail { get; set; }
        public virtual Customer Customer { get; set; }
    }
}