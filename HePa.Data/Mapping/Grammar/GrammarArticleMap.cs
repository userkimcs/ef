using HePa.Core.Entities.Grammar;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HePa.Data.Mapping.Grammar
{
    public class GrammarArticleMap : EntityTypeConfiguration<GrammarArticle>
    {
        public GrammarArticleMap()
        {
            HasKey(t => t.Id);

            // properties 
            Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None)
                .HasColumnName("GrammarId")
                ;

            Property(t => t.Alias).HasMaxLength(64);
            Property(t => t.IsLeaf);
            Property(t => t.ParentId).HasMaxLength(128);

            Property(t => t.TextInEnglish).HasMaxLength(3999);
            Property(t => t.TextInVietnamese).HasMaxLength(3999);

            Property(t => t.TitleInEnglish);
            Property(t => t.TitleInVietnamese);
            Property(t => t.Index);
            Property(t => t.VisitCounter);

            ToTable("GrammarArticles");
        }
    }
}
