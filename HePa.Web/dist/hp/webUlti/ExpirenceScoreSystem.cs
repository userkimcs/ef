using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.dist.hp.webUlti
{
    public static class ExpirenceScoreSystem
    {
        public const int UserRegisteredSuccessfully = 100;
        public const int ShareALesson = 2;
        public const int CommentALesson = 2;
        public const int LikeALesson = 1;
        public const int VocabularyBadScore  = 1;
        public const int VocabularyCoolScore  = 2;
        public const int VocabularyGreatScore  = 3;
        public const int VocabularyPerfectScore = 4;
        public const int CommentHaveUpTo5Likes = 2;
        public const int CommentHaveUpTo10Likes = 4;
        public const int CommentHaveUpTo50Likes = 10;
        public const int CommentHaveUpTo100Likes = 20;
        public const int CommentHaveUpTo300Likes = 30;

        public const int ReputationExp = 1;
        public const int DiligenceExp = 2;
        public const int FireExp = 3;
    }
}