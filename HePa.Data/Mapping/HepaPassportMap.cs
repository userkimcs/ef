using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Data.Mapping
{
    class HepaPassportMap : EntityTypeConfiguration<HepaPassport>
    {
        public HepaPassportMap()
        {
            HasKey(t => t.Id);

            Property(t => t.Id).HasColumnName("PassportId");
            Property(t => t.Code).IsOptional();
            Property(t => t.CreateDate).IsOptional();
            Property(t => t.ExpiryDate).IsOptional();
            Property(t => t.ActiveDate).IsOptional();
            Property(t => t.UserId).IsOptional();
            ToTable("HepaPassports");


        }
    }
}
