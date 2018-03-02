using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class LearnWordHistoryMap : EntityTypeConfiguration<LearnWordHistory>
    {
        public LearnWordHistoryMap()
        {
            HasKey(t => t.Id);

            // property
            Property(t => t.Id)
                .HasColumnName("LearnWordHistoryId");
            Property(t => t.UserId).IsRequired().HasMaxLength(128);
            Property(t => t.WordId).IsRequired().HasMaxLength(128);
            Property(t => t.ClassId).IsRequired().HasMaxLength(128);
            Property(t => t.aWord).IsRequired();
            Property(t => t.IsSuccessed);
            Property(t => t.LearningDate);
            Property(t => t.Complexity);
            Property(t => t.ArchivedScore);
            Property(t => t.PartOfSpeech);
            Property(t => t.Meaning);

            ToTable("LearnWordHistories");
        }
    }
}
