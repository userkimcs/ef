using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Data.Mapping
{
    public class CurrencyMap : EntityTypeConfiguration<Currency>
    {
        public CurrencyMap()
        {
            HasKey(t => t.Id);

            Property(t => t.Id).HasColumnName("CurrencyId");
            Property(t => t.Name);
            Property(t => t.IconLink);
            Property(t => t.CreateDate);
            ToTable("Currency");
        }
    }
}
