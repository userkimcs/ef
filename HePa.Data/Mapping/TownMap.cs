using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;  


namespace HePa.Data.Mapping
{
    public class TownMap : EntityTypeConfiguration<Town>
    {
        public TownMap()
        {
            HasKey(t => t.Id);

            Property(t => t.Id).HasDatabaseGeneratedOption(DatabaseGeneratedOption.None).HasColumnName("TownId");
            Property(t => t.Name);
            Property(t => t.DistrictId);

            ToTable("Towns");
        }
    }
}
