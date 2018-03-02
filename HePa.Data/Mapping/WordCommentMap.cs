using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class WordCommentMap : EntityTypeConfiguration<WordComment>
    {
        public WordCommentMap()
        {
            HasKey(t => t.Id);

            // properties
            Property(t => t.Id)
                .HasColumnName("WordCommentId");
            Property(t => t.Votes);
            Property(t => t.CreatedDate);
            Property(t => t.CommentContent);
            Property(t => t.CommentParent);
            Property(t => t.UserId);
            Property(t => t.WordId);
            Property(t => t.NumberOfReplies);

            // Relationship with class 
            HasRequired(t => t.Word)
                .WithMany(c => c.CommentsOfWord)
                .HasForeignKey(t => t.WordId)
                .WillCascadeOnDelete(false);
            // Relationship with account 
            HasRequired(t => t.User)
                .WithMany(c => c.CommentsInWords)
                .HasForeignKey(t => t.UserId).WillCascadeOnDelete(false);
            // User like comment 

            // Table
            ToTable("WordComments");
        }
    }
}
