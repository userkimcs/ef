
using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class ToDayWordMap : EntityTypeConfiguration<TodayWord>
    {
        public ToDayWordMap()
        {
            Property(t => t.ClassId);
            Property(t => t.UserId);
            Property(t => t.WordId);
            Property(t => t.CreatedDate);
            Property(t => t.IsLearned);
            Property(t => t.IsPassed);
            Property(t => t.ArchivedScore);

            ToTable("ToDayWords");
        }
    }
}
