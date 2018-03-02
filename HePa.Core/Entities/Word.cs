using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;

namespace HePa.Core.Entities
{
    public enum POS
    {
        Noun,   // 0
        Verb,   // 1
        Adjective,  // 2
        Adverb, // 3
        Pronoun,    // 4
        ModalVerb,  // 5
        Number,    // 6
        Preposition,    // 7
        Determiner, // 8
        Conjunction,    // 9
        DefiniteArticle,    // 10
        IndefiniteArticle   // 11
    };
    
    public enum Complexity
    {
        Easy = 1, 
        Normal,
        Hard
    };

    public class Word : BaseEntity
    {
        public static Complexity ToComplexity(string n)
        {
            int number = System.Convert.ToInt16(n);
            if (number <= 1)
            {
                return Complexity.Easy;
            }
            else if (number == 2)
            {
                return Complexity.Normal;
            }
            else
            {
                return Complexity.Hard;
            }
        }
        // Key
        // 
        // Properties 
        // 
        [Required]
        public string aWord { get; set; }
        [Required]
        public string ImageLink { get; set; }
        [Required]
        public string IPA { get; set; }
        [Required]
        public string Meaning { get; set; }
        [Required]
        public string AudioLink { get; set; }

        public int TotalLikes { get; set; }
        public int TotalComments { get; set; }
        public int TotalViews { get; set; }

        public Nullable<DateTime> CreatedDate { get; set; }
        public Complexity Complexity { get; set; }
        public string PartOfSpeech { get; set; }

        // Class
        public string ClassBelongId { get; set; }
        public Class Class { get; set; }
        // end Class

        // Example sentence 
        public ICollection<WordExampleSentence> ExampleSentences { get; set; }
        // end Example sentence

        // Word Comment 
        public ICollection<WordComment> CommentsOfWord { get; set; }
        // Liked users
        public ICollection<ApplicationUser> LikedUsers { get; set; }
    }
}
