using HePa.Core.Entities;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;


namespace HePa.Data.Mapping
{
    public class ApplicationUserMap : EntityTypeConfiguration<ApplicationUser>
    {
        public ApplicationUserMap()
        {
            Property(t => t.Id);

            Property(t => t.Id).HasColumnName("UserId");
            Property(t => t.BirthDay).IsOptional();
            Property(t => t.CreatedDate).IsOptional();
            Property(t => t.LoginProvider).IsOptional();
            Property(t => t.DisplayName).IsOptional().HasMaxLength(64);
            // Update security 
            Property(t => t.AccessKey).IsOptional().HasMaxLength(10);
            Property(t => t.LastAccess).IsOptional();
            Property(t => t.CurrentExp);
            Property(t => t.LastDiligentDate);
            //Blocking active account function
            // Property(t => t.IsBlocked);
            Property(t => t.BlockCounter);
            //User release date
            Property(t => t.ExpDate);
            // Learn phrases
            HasMany(t => t.LearnedPhrases).WithMany(c => c.LearnedUsers)
                .Map(t => t.ToTable("UsersLearnPhrases")
                .MapLeftKey("UserId")
                .MapRightKey("PhraseId"));

            // Like classes 
            HasMany(t => t.LikedClasses).WithMany(c => c.LikedUsers)
                .Map(t => t.ToTable("UsersLikedClasses")
                .MapLeftKey("UserId")
                .MapRightKey("ClassId"));
            
            // Like word 
            HasMany(t => t.LikedWords).WithMany(c => c.LikedUsers)
                .Map(t => t.ToTable("UsersLikedWords")
                .MapLeftKey("UserId")
                .MapRightKey("WordId"));

            // Like phrase 
            HasMany(t => t.LikedPhrases).WithMany(c => c.LikedUsers)
                .Map(t => t.ToTable("UsersLikedPhrases")
                .MapLeftKey("UserId")
                .MapRightKey("PhraseId"));
        }
    }
}
