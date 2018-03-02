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
    public class KindOfExpMap : EntityTypeConfiguration<KindOfExperience>
    {
        public KindOfExpMap()
        {
            HasKey(t => t.Id);

            // property 
            Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity)
                .HasColumnName("KindOfExpId");
            Property(t => t.ExpName);
            Property(t => t.CreatedDate);

            ToTable("KindOfExperiences");

        }
    }
}
