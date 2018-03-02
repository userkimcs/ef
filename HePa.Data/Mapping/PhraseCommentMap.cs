using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class PhraseCommentMap : EntityTypeConfiguration<PhraseComment>
    {
        public PhraseCommentMap()
        {
            HasKey(t => t.Id);

            // properties
            Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity)
                .HasColumnName("PhraseCommentId");
            Property(t => t.Votes);
            Property(t => t.CreatedDate);
            Property(t => t.CommentContent);
            Property(t => t.CommentParent);

            // Relationship with class 
            HasRequired(t => t.Phrase)
                .WithMany(c => c.CommentsOfPhrase)
                .HasForeignKey(t => t.PhraseId)
                .WillCascadeOnDelete(false);
            // Relationship with account 
            HasRequired(t => t.User)
                .WithMany(c => c.CommentsInPhrases)
                .HasForeignKey(t => t.UserId).WillCascadeOnDelete(false);
            // Table
            ToTable("PhraseComments");
        }
    }
}
