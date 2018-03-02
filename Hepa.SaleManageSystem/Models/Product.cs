using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hepa.SaleManageSystem.Models
{
    public class Product : BaseEntity
    {
        public string Name { get; set; }
        public double Price { get; set; }
        public string Description { get; set; }
        public int Quantity { get; set; }
        public string Size { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }
    }
}