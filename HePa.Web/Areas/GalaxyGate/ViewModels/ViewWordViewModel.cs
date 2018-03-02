using HePa.Core.Entities;
using HePa.Core.Helpers;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;


namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class ViewWordViewModel
    {
        // Check if user joined class and learn this word before  
        public bool IsAllowLearnAgain { get; set; }
        // Check if user if user not join class 
        public bool IsAllowResume { get; set; }
        // Current word info
        public Word Word { get; set; }
        public IList<WordCommentViewModel> Comments { get; set; }
        // Comment user will post
        [Required]
        public string Comment { get; set; }


        public ViewWordViewModel(IList<WordCommentViewModel> comments, Word word)
        {
            this.Comment = "";
            this.Comments = comments;
            this.Word = word;
        }
        public ViewWordViewModel()
        {
            this.Comment = "";
            Word = new Word();
        }

        public ListWordCommentViewModel GetListWordCommentViewModel()
        {
            return new ListWordCommentViewModel(Comments);
        }
    }
}