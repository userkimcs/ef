using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Data.Mapping
{
    public class CouponCodeMap : EntityTypeConfiguration<CouponCode>
    {
        public CouponCodeMap()
        {
            Property(t => t.Id).HasColumnName("CouponCodeId");

            Property(t => t.SaleOffAmount);
            Property(t => t.Type);
            Property(t => t.Desciption);
            Property(t => t.LimitedCondition);
            Property(t => t.UsageAmount);
            Property(t => t.CreateDate).IsOptional();
            Property(t => t.EndDate).IsOptional();
            ToTable("CouponCodes");

        }
    }
}
