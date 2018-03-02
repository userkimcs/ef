using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class WordMap : EntityTypeConfiguration<Word>  
    {
        public WordMap()
        {
            // Key
            HasKey(t => t.Id);

            // properties
            Property(t => t.Id).HasColumnName("WordId");
            Property(t => t.aWord);
            Property(t => t.ImageLink).IsOptional(); 
            Property(t => t.IPA).IsUnicode(true);
            Property(t => t.Meaning).IsUnicode(true);
            Property(t => t.AudioLink).HasMaxLength(128).IsOptional(); 
            Property(t => t.TotalLikes).IsOptional();
            Property(t => t.TotalComments).IsOptional();
            Property(t => t.TotalViews).IsOptional();
            Property(t => t.CreatedDate).IsOptional(); 
            Property(t => t.Complexity);
            Property(t => t.PartOfSpeech);
            Property(t => t.ClassBelongId);

            // Table
            ToTable("Words");

            // Relationship
            HasRequired(t => t.Class)
                .WithMany(c => c.Words)
                .HasForeignKey(t => t.ClassBelongId).WillCascadeOnDelete(false); 
        }
    }
}
