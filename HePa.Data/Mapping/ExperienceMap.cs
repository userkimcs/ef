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
    public class ExperienceMap : EntityTypeConfiguration<Experience>
    {
        public ExperienceMap()
        {
            HasKey(t => t.Id);

            Property(t => t.Id).HasColumnName("ExperienceId");
            Property(t => t.CurrentExp);
            Property(t => t.UserId);
            Property(t => t.KindOfExp);
            Property(t => t.LastUpdate).IsOptional();
            ToTable("Experience");
        }
    }
}
