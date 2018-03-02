using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class UserGoalMap : EntityTypeConfiguration<UserGoal>
    {
        public UserGoalMap()
        {
            Property(t => t.ClassId);
            Property(t => t.UserId);
            Property(t => t.CourseId);
            Property(t => t.NumberOfDays);
            Property(t => t.CreatedDate);
            Property(t => t.LastChanged);
            Property(t => t.LastActive);
            ToTable("UsersJoinClasses_Goal");

            // Mapping to customer
            HasRequired(t => t.User)
                .WithMany(c => c.JoinedClasses)
                .HasForeignKey(t => t.UserId)
                .WillCascadeOnDelete(false);

            // Mapping to product
            HasRequired(t => t.Class)
                .WithMany(c => c.JoinedUsers)
                .HasForeignKey(t => t.ClassId)
                .WillCascadeOnDelete(false);

            // Course 
            HasRequired(t => t.Course)
                .WithMany(c => c.RegisteredUsers)
                .HasForeignKey(t => t.CourseId)
                .WillCascadeOnDelete(false);
        }
    }
}
