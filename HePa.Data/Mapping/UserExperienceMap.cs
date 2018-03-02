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
    public class UserExperienceMap : EntityTypeConfiguration<UserExperience>
    {
        public UserExperienceMap()
        {
            HasKey(t => t.Id);

            // properties 
            Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None)
                .HasColumnName("UserExperienceId");
            Property(t => t.CreatedDate);
            Property(t => t.KindOfExpId);
            Property(t => t.UserId);
            Property(t => t.Exp);
            Property(t => t.ActionName).HasMaxLength(1024);

            // mapping 
            HasRequired(t => t.User)
                .WithMany(p => p.Experiences)
                .HasForeignKey(t => t.UserId);

            HasRequired(t => t.KindOfExp)
                .WithMany(p => p.Experiences)
                .HasForeignKey(t => t.KindOfExpId);

            ToTable("UserWithExperiences");
        }
    }
}
