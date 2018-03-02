

using HePa.Core.Entities;
using System.Data.Entity.ModelConfiguration;
namespace HePa.Data.Mapping
{
    class LearnWordResultMap : EntityTypeConfiguration<LearnWordResult>
    {
        public LearnWordResultMap()
        {
            Property(t => t.UserId);
            Property(t => t.WordId);
            Property(t => t.IsSuccessed);
            Property(t => t.AchievedScore);
            Property(t => t.LastUpdated);
            ToTable("LearnWordResults");
        }
    }
}
