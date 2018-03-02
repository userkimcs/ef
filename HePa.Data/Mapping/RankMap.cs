
using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class RankMap : EntityTypeConfiguration<Rank>
    {
        public RankMap()
        {
            HasKey(t => t.Id);

            Property(t => t.Id);
            Property(t => t.CreatedDate);
            Property(t => t.RankExp);
            Property(t => t.RankIcon);
            Property(t => t.RankName);
            Property(t => t.KindOfRank);
            ToTable("Ranks");
        }
    }
}
