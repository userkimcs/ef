using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Entities
{
    public class District : BaseEntity
    {
        public string Name { get; set; }
        public string CityId { get; set; }
    }
}
