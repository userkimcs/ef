using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Helpers
{
    public class Constraint
    {
        public static readonly string HEPA_ADMIN_ID = "2c89d422-ca2f-4daf-8921-f47fd88ddfa2";
        public static readonly string DISPLAY_NAME = "🔔 Hepa Support";
        public static readonly string SMTP_HOST = "smtp.zoho.com";
        public static readonly int SMTP_PORT = 587;
        public static readonly bool ENABLE_SSL = true;
        public static readonly bool SMTP_DEFAULT_CREDENTIAL = false;
        public static readonly string EMAIL_ADDRESS = "no-reply@hepatown.com";
        public static readonly string EMAIL_PASS = "gfn1nmzni1z1";
        
        public class HepaCourse
        {
            public static readonly string TU_VUNG = "words";
            public static readonly string NGU_PHAP = "grammar";
            public static readonly string PHAT_AM = "phat-am";
        }

        public class MemberExpSystem
        {
            public class UserRegister
            {
                public static readonly string ID = "1";
                public static readonly string NAME = "Đăng ký mới";
                public static readonly int EXP = 100;
            }

            public class UserLearnWord
            {
                public static readonly string ID = "2";
                public static readonly string NAME = "Học xong từ";
            }

            public class ContinuousLearning
            {
                public static readonly string ID = "3";
                public static readonly string NAME = "Học liên tiếp";
            }
        }

        public class CurrencySystem
        {
            public static readonly string DIAMOND = "Diamond";
            public static readonly string STARFISH = "Starfish";
            public static readonly string HEART = "Heart";

            //Heart
            public static readonly int LIKED_COMMENT = 1;
            public static readonly int DISLIKED_COMMENT = -1;
        }

        public static class FreeUserLearnwordAmount
        {
            public static readonly int FREE_USER_LEARNWORD_AMOUNT = 8;
        }
    }
}
