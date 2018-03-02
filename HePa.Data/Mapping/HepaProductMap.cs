using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;  

namespace HePa.Data.Mapping
{
    public class HepaProductMap : EntityTypeConfiguration<HepaProduct>
    {
        public HepaProductMap()
        {
            HasKey(t => t.Id);

            Property(t => t.Id).HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity).HasColumnName("HepaProductId");
            Property(t => t.CreatedDate).IsOptional();
            Property(t => t.Description).IsOptional();
            Property(t => t.Name);
            Property(t => t.Price).IsOptional();
            Property(t => t.Quantity).IsOptional();

            ToTable("HepaProducts");


        }
    }
}
