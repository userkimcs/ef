using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;  

namespace HePa.Data.Mapping
{
    public class OrderDetailMap : EntityTypeConfiguration<OrderDetail>
    {
        public OrderDetailMap()
        {
            Property(t => t.Id).HasColumnName("OrderDetailId");

            Property(t => t.CustomerId);
            Property(t => t.HepaProductId);
            Property(t => t.NumberOfItems);
            Property(t => t.CouponCodeId);
            Property(t => t.KindOfPurchase).IsOptional();
            Property(t => t.CreatedDate).IsOptional();
            ToTable("OrderDetails");
            
            // Mapping to customer
            HasRequired(t => t.Customer)
                .WithMany(c => c.OrderDetails)
                .HasForeignKey(t => t.CustomerId)
                .WillCascadeOnDelete(false);

             //Mapping to product
            HasRequired(t => t.HepaProduct)
                .WithMany(c => c.OrderDetails)
                .HasForeignKey(t => t.HepaProductId)
                .WillCascadeOnDelete(false);
        }
    }
}
