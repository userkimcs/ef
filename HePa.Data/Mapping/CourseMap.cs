using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class CourseMap : EntityTypeConfiguration<Course> 
    {
        public CourseMap()
        {
            // Key 
            HasKey(t => t.Id);

            // Properties 
            Property(t => t.Id).HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity).HasColumnName("CourseId");
            Property(t => t.CourseName);
            Property(t => t.CreatedDate);
            Property(t => t.StartDate);
            Property(t => t.EndDate);
            Property(t => t.TotalLikes);
            Property(t => t.Image);
            Property(t => t.Abstract);

            // Table
            ToTable("Courses");

            // Relationships

            HasRequired(t => t.CreatedUser)
                .WithMany(c => c.CreatedCourses)
                .HasForeignKey(t => t.CreatedUserId).WillCascadeOnDelete(false);
        }
    }
}
