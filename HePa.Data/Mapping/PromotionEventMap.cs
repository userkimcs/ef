using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Data.Mapping
{
    class PromotionEventMap : EntityTypeConfiguration<PromotionEvent>
    {
        public PromotionEventMap()
        {
            Property(t => t.Id).HasColumnName("PromotionEventId");

            Property(t => t.Name);
            Property(t => t.Type);
            Property(t => t.Value);
            Property(t => t.Desciption);
            Property(t => t.LimitedCondition);
            Property(t => t.CreateDate).IsOptional();
            Property(t => t.EndDate).IsOptional();
            ToTable("PromotionEvent");
        }
    }
}
