
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
namespace HePa.Core.Entities
{
    /// <summary>
    /// 
    /// </summary>
    public class Customer : BaseEntity
    {
        // Required info for order
        public string Email { get; set; }
        [Required]
        public string FullName { get; set; }
        [Required]
        public string PhoneNumber { get; set; }
        [Required]
        public string Address { get; set; }
        public Nullable<DateTime> CreatedDate { get; set; }

        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
