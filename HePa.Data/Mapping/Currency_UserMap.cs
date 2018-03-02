using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Data.Mapping
{
    public class Currency_UserMap : EntityTypeConfiguration<Currency_User>
    {
        public Currency_UserMap()
        {
            Property(t => t.CurrencyId);
            Property(t => t.UserId);
            Property(t => t.Amount);
            ToTable("Currency_UserMap");
        }
    }
}
