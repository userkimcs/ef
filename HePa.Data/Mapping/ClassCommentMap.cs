

using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;
namespace HePa.Data.Mapping
{
    public class ClassCommentMap : EntityTypeConfiguration<ClassComment>  
    {
        public ClassCommentMap()
        {
            HasKey(t => t.Id);

            Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity)
                .HasColumnName("ClassCommentId");

            Property(t => t.Votes);
            Property(t => t.CreatedDate);
            Property(t => t.CommentContent);
            Property(t => t.CommentParent);

            // Relationship with class 
            HasRequired(t => t.Class)
                .WithMany(c => c.CommentsOfClass)
                .HasForeignKey(t => t.ClassId)
                .WillCascadeOnDelete(false);
            // Relationship with account 
            HasRequired(t => t.User)
                .WithMany(c => c.CommentsInClasses)
                .HasForeignKey(t => t.UserId).WillCascadeOnDelete(false);

            ToTable("ClassComments");
        }
    }
}
