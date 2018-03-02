using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class WordExampleSentenceMap : EntityTypeConfiguration<WordExampleSentence>
    {
        public WordExampleSentenceMap() 
        {
            // Key 
            HasKey(t => t.Id) ;

            // Properties 
            Property(t => t.Id).HasColumnName("ExampleSentenceId");
            Property(t => t.Sentence).IsRequired();
            Property(t => t.Meaning).IsRequired();
            Property(t => t.AudioLink).IsOptional();
            Property(t => t.CreatedDate);

            Property(t => t.WordId);

            // relations
            HasRequired(t => t.Word)
                .WithMany(c => c.ExampleSentences)
                .HasForeignKey(t => t.WordId).WillCascadeOnDelete(false);
        }
    }
}
