using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Entities
{
    public class HepaPassport : BaseEntity
    {
        public string Code { get; set; }
        public int ExpiryDate { get; set; } //Calculate by days
        public Nullable<DateTime> CreateDate { get; set; }
        public Nullable<DateTime> ActiveDate { get; set; }
        public string UserId { get; set; }

    }
}
