using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    class PhraseExampleSentanceMap : EntityTypeConfiguration<PhraseExampleSentance>
    {
        public PhraseExampleSentanceMap()
        {
            // Key 
            HasKey(t => t.Id);

            // Properties 
            Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity)
                .HasColumnName("ExamplePhraseId");
            Property(t => t.Sentence).IsRequired();
            Property(t => t.Meaning).IsRequired();
            Property(t => t.AudioLink).IsOptional();
            Property(t => t.CreatedDate);

            Property(t => t.PhraseId);

            // relations
            HasRequired(t => t.Phrase)
                .WithMany(c => c.ExampleSentences)
                .HasForeignKey(t => t.PhraseId).WillCascadeOnDelete(false);
        }
    }
}
