using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Entities
{
    public class Currency : BaseEntity
    {
        public string Name { get; set; }       
        public string IconLink { get; set; }
        public Nullable<DateTime> CreateDate { get; set; }
        
        //
        public ICollection<Currency_User> Currency_User { get; set; }
    }
}
