using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;  

namespace HePa.Data.Mapping
{
    public class DistrictMap : EntityTypeConfiguration<District>
    {
        public DistrictMap()
        {
            HasKey(t => t.Id);

            Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None).HasColumnName("DistrictId");
            Property(t => t.Name);
            Property(t => t.CityId);

            ToTable("Districts");
        }
    }
}
