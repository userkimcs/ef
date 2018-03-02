

using HePa.Core.Entities;
using System.Collections.Generic;
namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class LectureViewModel
    {
        // Check if user learned this word or not yet 
        // alow user to view word only
        public bool IsAllowView { get; set; }

        // This word 
        public TodayWord TodayWord { get; set; }
        // List words user has to learn
        public IList<TodayWord> TodayWords { get; set; }
        // For anonymous type
        public ViewWordViewModel WordDetails { get; set; }

        // ctor
        public LectureViewModel()
        {
            // Do nothing
        }

        public LectureViewModel(TodayWord TodayWord, IList<TodayWord> TodayWords)
        {
            this.TodayWord = TodayWord;
            this.TodayWords = TodayWords;
        }
        public LectureViewModel(TodayWord TodayWord, IList<TodayWord> TodayWords,
            ViewWordViewModel WordDetails, bool IsAllowView, bool IsAllowLearnAgain, bool IsAllowResume)
        {
            this.TodayWord = TodayWord;
            this.TodayWords = TodayWords;
            this.WordDetails = WordDetails;
            // boolean type 
            this.IsAllowView = IsAllowView;
            this.WordDetails.IsAllowLearnAgain = IsAllowLearnAgain;
            this.WordDetails.IsAllowResume = IsAllowResume;
        }
    }
}