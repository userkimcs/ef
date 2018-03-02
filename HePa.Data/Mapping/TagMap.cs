
using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping
{
    public class TagMap : EntityTypeConfiguration<Tag>
    {
        public TagMap()
        {
            HasKey(t => t.Id);

            Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity)
                .HasColumnName("TagId");
            Property(t => t.TagName);

            // Table
            ToTable("Tags");

            // Relationship
            HasMany(t => t.ClassesHaveTag)
                .WithMany(c => c.TagsOfClass)
                .Map(t => t.ToTable("ClassTag")
                .MapLeftKey("ClassId")
                .MapRightKey("TagId"));
        }
    }
}
