using System.Data.Entity.ModelConfiguration;
using HePa.Core.Entities;

namespace HePa.Data.Mapping
{
    public class UserLikedWordCommentMap : EntityTypeConfiguration<UserLikedWordComment>
    {
        public UserLikedWordCommentMap()
        {
            Property(t => t.UserId)
                .HasMaxLength(128).HasColumnName("UserId");
            Property(t => t.CommentId)
                .HasMaxLength(128).HasColumnName("CommentId");
            Property(t => t.CreatedDate);

            ToTable("UsersLikedWordComments");

            // Mapping relationships 
            // user 
            HasRequired(t => t.User)
                .WithMany(c => c.WordLikedComments)
                .HasForeignKey(t => t.UserId)
                .WillCascadeOnDelete();
            // word comment 
            HasRequired(t => t.WordComment)
                .WithMany(c => c.WordLikedUsers)
                .HasForeignKey(t => t.CommentId)
                .WillCascadeOnDelete();
        }
    }
}
