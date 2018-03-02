using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Entities
{
    public class Experience : BaseEntity
    {
        public int CurrentExp { get; set; }
        public int KindOfExp { get; set; }
        public string UserId { get; set; }
        public Nullable<DateTime> LastUpdate { get; set; }
    }
}
