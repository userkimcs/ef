using System;

namespace HePa.Core.Entities
{
    public class LearnWordHistory : BaseEntity
    {
        public string UserId { get; set; }
        public string WordId { get; set; }
        public string ClassId { get; set; }
        public string aWord { get; set; }
        public string Meaning { get; set; }
        public string PartOfSpeech { get; set; }
        public Complexity Complexity { get; set; }
        public int ArchivedScore { get; set; }
        public bool IsSuccessed { get; set; }
        public Nullable<DateTime> LearningDate { get; set; }

    }
}
