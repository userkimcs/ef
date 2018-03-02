using HePa.Core.Entities;
using HePa.Core.Entities.Grammar;
using System;

namespace HePa.Core.Helpers
{
    /// <summary>
    /// Create object by factory
    /// All methods return new object
    /// </summary>
    public class EntityFactory
    {

        // Create class
        public static Class CreateClass()
        {
            return new Class();
        }
        public static Class CreateClass(string AccountId, string ClassName, string Abstract)
        {
            return new Class
            {
                CreatedByUserId = AccountId,
                ClassName = ClassName,
                Abstract = Abstract,
                CreatedDate = System.DateTime.Now,
            };
        }
        public static Class CreateClass(string AccountId, 
            string ClassId, string ClassName, string Abstract, string Image, string CourseId,
            Nullable<DateTime> Start, Nullable<DateTime> End)
        {
            return new Class
            {
                Id = ClassId,
                CreatedByUserId = AccountId, 
                ClassName = ClassName,
                Abstract = Abstract,
                StartDate = Start,
                EndDate = End,
                Image = Image,
                CreatedDate = System.DateTime.Now,
                TotalLearns = 0, 
                TotalLikes = 0,
                NumberOfWords = 0, 
                NumberOfGrammars = 0, 
                NumberOfPhrases = 0, 
                NumberOfPronunciations = 0,
                NumberOfWeeks = 0,
                CourseId = CourseId,
            };
        }

        // Create word
        public static Word CreateWord()
        {
            return new Word();
        }
        public static Word CreateWord(string ClassBelongId, string AWord, 
            string IPA, string Meaning, string AudioLink, Complexity Complex,
            string PartOfSpeech)
        {
            return new Word
            {
                ClassBelongId = ClassBelongId, 
                aWord = AWord,
                IPA = IPA,
                Meaning = Meaning,
                AudioLink = AudioLink,
                PartOfSpeech = PartOfSpeech,
                TotalLikes = 0, 
                TotalComments = 0,
                TotalViews = 0,
                Complexity = Complex,
                CreatedDate = System.DateTime.Now,
            };
        }
        public static Word CreateWord(string wordId, string ClassBelongId, string AWord,
           string IPA, string Meaning, string AudioLink, string imageLink, Complexity Complex,
           string PartOfSpeech)
        {
            return new Word
            {
                Id = wordId,
                ClassBelongId = ClassBelongId,
                aWord = AWord,
                IPA = IPA,
                Meaning = Meaning,
                AudioLink = AudioLink,
                PartOfSpeech = PartOfSpeech,
                TotalLikes = 0,
                TotalComments = 0,
                TotalViews = 0,
                Complexity = Complex,
                CreatedDate = System.DateTime.Now,
                ImageLink = imageLink,
            };
        }
        // Create Example
        public static WordExampleSentence CreateExampleSentence()
        {
            return new WordExampleSentence();
        }

        public static WordExampleSentence CreateExampleSentence(string WordId, 
            string Sentance, string Meaning, string AudioLink)
        {
            return new WordExampleSentence
            {
                WordId = WordId,
                Sentence = Sentance,
                Meaning = Meaning,
                AudioLink = AudioLink,
                CreatedDate = System.DateTime.Now,
            };
        }

        public static WordExampleSentence CreateExampleSentence(string id ,string WordId,
          string Sentance, string Meaning, string AudioLink)
        {
            return new WordExampleSentence
            {
                Id = id,
                WordId = WordId,
                Sentence = Sentance,
                Meaning = Meaning,
                AudioLink = AudioLink,
                CreatedDate = System.DateTime.Now,
            };
        }
        public static WordExampleSentence CreateExampleSentence(string wordId, Word w)
        {
            return new WordExampleSentence
            {
                WordId = wordId, 
                Word = w,
            };
        }

        public static ClassComment CreateClassComment(string ClassId, string AccountId, string Content)
        {
            return new ClassComment
            {
                ClassId = ClassId,
                UserId = AccountId,
                CreatedDate = System.DateTime.Now,
                Votes = 0,
                CommentContent = Content,
                CommentParent = 0,
            };
        }

        /// <summary>
        /// Create word comment object
        /// </summary>
        /// <param name="UserId">user id</param>
        /// <param name="WordId">word id</param>
        /// <param name="Content">comment content</param>
        /// <param name="CommentParentId">Comment parent id (Optional). If default, there is no parent</param>
        /// <returns>WordComment</returns>
        public static WordComment CreateWordComment(string UserId, string WordId, string Content)
        {
   
                string commentId = Guid.NewGuid().ToString();
                return new WordComment
                {
                    Id = commentId,
                    CommentParent = commentId,
                    WordId = WordId,
                    UserId = UserId,
                    CreatedDate = System.DateTime.Now,
                    Votes = 0,
                    CommentContent = Content,
                    NumberOfReplies = 0,
                };
        }
        /// <summary>
        /// Create word comment object
        /// </summary>
        /// <param name="UserId">user id</param>
        /// <param name="WordId">word id</param>
        /// <param name="Content">comment content</param>
        /// <param name="CommentParentId">Comment parent id (Optional). If default, there is no parent</param>
        /// <returns>WordComment</returns>
        public static WordComment CreateWordComment(string UserId, string WordId, string Content, string CommentParentId)
        {
   
                string commentId = Guid.NewGuid().ToString();
                return new WordComment
                {
                    Id = commentId,
                    CommentParent = CommentParentId,
                    WordId = WordId,
                    UserId = UserId,
                    CreatedDate = System.DateTime.Now,
                    Votes = 0,
                    CommentContent = Content,
                    NumberOfReplies = 0,
                };
        }

        public static Customer CreateCustomer(string FullName, 
                                            string Email, string PhoneNumber, string Address)
        {
            return new Customer
            {
                Id = Guid.NewGuid().ToString(),
                FullName = FullName,
                Email = Email,
                Address = Address,
                PhoneNumber = PhoneNumber,
                CreatedDate = System.DateTime.Now
            };
        }

        public static TodayWord CreateTodayWord(string UserId, string ClassId, string WordId)
        {
            return new TodayWord
            {
                UserId = UserId, 
                ClassId = ClassId, 
                WordId = WordId, 
                CreatedDate = System.DateTime.Now, 
                IsLearned = false,
                IsPassed = false,
            };
        }

        public static TodayWord CreateTodayWord(string UserId, string ClassId, Word word, bool isLearned, bool isPassed)
        {
            return new TodayWord
            {
                UserId = UserId,
                ClassId = ClassId,
                WordId = word.Id,
                CreatedDate = System.DateTime.Now,
                IsLearned = isLearned,
                IsPassed = isPassed,
                Word = word,
            };
        }

        public static Course CreateCourse(string CouseId, string CourseName, string Abstract, string CreatedUserId)
        {
            return new Course();
        }

        public static Course CreateCourse(string CouseId, string CourseName, 
            string Abstract, string CreatedUserId, DateTime StartDate, DateTime EndDate)
        {
            return new Course();
        }

        public static LearnWordHistory CreateLearnWordHistory(string UserId, string ClassId, Word Word, int archivedScore)
        {
            return new LearnWordHistory 
            { 
                Id = Guid.NewGuid().ToString(),
                UserId = UserId,
                ClassId = ClassId,
                Complexity = Word.Complexity,
                IsSuccessed = false,
                ArchivedScore = archivedScore,
                PartOfSpeech = Word.PartOfSpeech,
                Meaning = Word.Meaning,
                LearningDate = DateTime.Now,
                WordId = Word.Id,
                aWord = Word.aWord,
            };
        }

        public static LearnWordResult CreateLearnWordResult(string UserId, string ClassId, string WordId, double ArchivedScore)
        {
            return new LearnWordResult 
            { 
                UserId = UserId,
                WordId = WordId,
                ClassId = ClassId,
                AchievedScore = ArchivedScore,
                IsSuccessed = ArchivedScore > 5 ? true : false ,
                LastUpdated = DateTime.Now
            };
        }

        public static UserLikedWordComment CreateUserLikeWordComment(string UserId, string CommentId)
        {
            return new UserLikedWordComment
            {
                UserId = UserId,
                CommentId = CommentId,
                CreatedDate = DateTime.Now,
            };
        }

        public static Currency_User CreateCurrency_UserObject(string userID, string currencyId)
        {
            return new Currency_User
            {
                UserId = userID,
                CurrencyId = currencyId,
                Amount = 0,
            };
        }

        public static UserExperience CreateUserExperience(string UserId, string ExpKind, string Action, int Exp)
        {
            return new UserExperience 
            { 
                Id = Guid.NewGuid().ToString(),
                UserId = UserId,
                KindOfExpId = ExpKind,
                Exp = Exp,
                CreatedDate = DateTime.Now,
                ActionName = Action,
            };
        }

        public static GrammarArticle CreateGrammarArticle(string VietNameseTitle, string EnglishTitle, 
            string Alias, string VietNameseText, string EnglishText, 
            string ParentId, bool IsLeaf)
        {
            return new GrammarArticle
            {
                TitleInVietnamese = VietNameseTitle, 
                TextInVietnamese = VietNameseText,
                TitleInEnglish = EnglishTitle,
                TextInEnglish = EnglishText,
                Alias = Alias,
                ParentId = ParentId == null ? "0" : ParentId,
                IsLeaf = IsLeaf,
                VisitCounter = 0,
                Id = Guid.NewGuid().ToString(),
            };
        }
    }
}
