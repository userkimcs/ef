using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class PhraseMap : EntityTypeConfiguration<Phrase>
    {
        public PhraseMap()
        {
            // Key
            HasKey(t => t.Id);

            // properties
            Property(t => t.Id).HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity).HasColumnName("PhraseId");
            Property(t => t.aPhrase);
            Property(t => t.ImageLink);
            Property(t => t.IPA).IsUnicode(true);
            Property(t => t.Meaning).IsUnicode(true);
            Property(t => t.AudioLink).HasMaxLength(128);
            Property(t => t.TotalLikes);
            Property(t => t.TotalComments);
            Property(t => t.TotalViews);
            Property(t => t.CreatedDate);
            Property(t => t.Complexity);
            Property(t => t.ClassBelongId);

            // Table
            ToTable("Phrases");

            // Relationship
            HasRequired(t => t.Class)
                .WithMany(c => c.Phrases)
                .HasForeignKey(t => t.ClassBelongId).WillCascadeOnDelete(false); 

        }
    }
}
