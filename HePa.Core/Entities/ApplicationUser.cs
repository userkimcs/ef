

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Threading.Tasks;
namespace HePa.Core.Entities
{
    public static class Role
    {
        public const string User = "User";
        public const string Admin = "Admin";
        public const string Teacher = "Teacher";
        public const string Supporter = "Supporter";
    }

    public enum Language
    {
        vi, lo
    };

    public class ApplicationUser : IdentityUser
    {
        public string Role { get; set; }
        // Automatic
        // 
        public bool IsVerified { get; set; }
        public bool IsPaid { get; set; }
        public bool IsBanned { get; set; }
        // Not require
        public string Name { get; set; }
        public Nullable<DateTime> BirthDay { get; set; }
        public string Job { get; set; }
        public string Place { get; set; }
        public string Avatar { get; set; }
        // for system obseverse
        // 
        public Nullable<DateTime> CreatedDate { get; set; }
        public Nullable<DateTime> LastActive { get; set; }
        public Language Language { get; set; }
        // Set login provider 
        public string LoginProvider { get; set; }
        // Dislay name 
        public string DisplayName { get; set; }
        //  Access key 
        public string AccessKey { get; set; }
        public Nullable<DateTime> LastAccess { get; set; }
        //block active code function when active wrong 3 times
        public bool IsBlocked { get; set; }
        public int BlockCounter { get; set; }
        // lazy loading 
        // Class
        public virtual ICollection<Class> CreatedClasses { get; set; }
        public virtual ICollection<UserGoal> JoinedClasses { get; set; }
        // End class

        // For comments 
        public virtual ICollection<ClassComment> CommentsInClasses { get; set; }
        public virtual ICollection<WordComment> CommentsInWords { get; set; }
        public virtual ICollection<PhraseComment> CommentsInPhrases { get; set; }
        // Course
        // 
        public virtual ICollection<Course> CreatedCourses { get; set; }

        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }
        // Update lazy loading for phrases 
        public virtual ICollection<Phrase> LearnedPhrases { get; set; }
        // List liked class, word, phrase
        public virtual ICollection<Class> LikedClasses { get; set; }
        public virtual ICollection<Word> LikedWords { get; set; }
        public virtual ICollection<Phrase> LikedPhrases { get; set; }

        // for liked word comment
        public ICollection<UserLikedWordComment> WordLikedComments { get; set; }

        // 

        public ICollection<Rank_User> Rank_User { get; set; }
        public ICollection<Currency_User> Currency_User { get; set; }

        // get current exp
        public int CurrentExp { get; set; }
        // List exp 
        public ICollection<UserExperience> Experiences { get; set; }

        // continuous learning 
        public int ContinousCounter { get; set; }
        // last learning day if user archive all words
        public Nullable<DateTime> LastDiligentDate { get; set; }

        //The user release date
        public int ExpDate { get; set; }
        public ApplicationUser()
        {
            IsBlocked = false;
            IsBanned = false;
            BlockCounter = 0;
            ExpDate = 0;
        }


    }
}
