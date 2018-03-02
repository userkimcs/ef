using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;  

namespace HePa.Data.Mapping
{
    public class CustomerMap : EntityTypeConfiguration<Customer>
    {
        public CustomerMap()
        {
            HasKey(t => t.Id);

            Property(t => t.Id).HasColumnName("CustomerId");
            Property(t => t.Address);
            Property(t => t.FullName);
            Property(t => t.CreatedDate).IsOptional();
            Property(t => t.PhoneNumber);
            Property(t => t.Email).IsOptional();

            ToTable("Customers");

        }
    }
}
