
using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class ClassMap : EntityTypeConfiguration<Class>  
    {
        public ClassMap()
        {
            // Key 
            HasKey(t => t.Id);

            // Properties 
            Property(t => t.Id).HasColumnName("ClassId");
            Property(t => t.ClassName);
            Property(t => t.CreatedDate);
            Property(t => t.StartDate);
            Property(t => t.EndDate);
            Property(t => t.TotalLikes);
            Property(t => t.TotalLearns);
            Property(t => t.Image);
            Property(t => t.Abstract);
            Property(t => t.IsMaintained);
            Property(t => t.Order);
            Property(t => t.Complexity);

            // Table
            ToTable("Classes");

            // Relationships
            
            // User
            HasRequired(t => t.CreatedUser)
                .WithMany(c => c.CreatedClasses)
                .HasForeignKey(t => t.CreatedByUserId).WillCascadeOnDelete(false);

            // Course
            HasRequired(t => t.Course)
                .WithMany(c => c.ContentedClasses)
                .HasForeignKey(t => t.CourseId).WillCascadeOnDelete(false);
        }
    }
}
