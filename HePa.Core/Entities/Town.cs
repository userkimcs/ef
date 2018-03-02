using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Entities
{
    public class Town : BaseEntity
    {
        public string Name { get; set; }
        public string DistrictId { get; set; }
    }
}
