using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;
namespace HePa.Data.Mapping
{
    public class FeedbackMap : EntityTypeConfiguration<Feedback>
    {
        public FeedbackMap()
        {
            HasKey(t => t.Id);

            Property(t => t.Id)
                .HasColumnName("FeedbackId");

            Property(t => t.Name);
            Property(t => t.Email);
            Property(t => t.Phone);
            Property(t => t.Type);
            Property(t => t.Url);
            Property(t => t.Message);
            Property(t => t.CreatedDate);

            // Table 
            ToTable("Feedbacks");
        }
    }
}
