using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hepa.SaleManageSystem.Models
{
    public class OrderDetailQL
    {
        public string OrderId { get; set; }
        public string ProductId { get; set; }
        public int Quality { get; set; }
        public int DiscountPercent { get; set; }
        public virtual Order Order { get; set; }
        public virtual Product Product { get; set; }
    }
}