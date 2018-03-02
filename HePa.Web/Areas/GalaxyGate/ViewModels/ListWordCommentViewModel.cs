using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class ListWordCommentViewModel : IEnumerable<WordCommentViewModel>
    {
        public IList<WordCommentViewModel> Comments { get; set; }
        public WordCommentReplyViewModel CommentReply { get; set; }
        public ListWordCommentViewModel(IList<WordCommentViewModel> Comments)
        {
            this.Comments = Comments;
        }

        public IEnumerator<WordCommentViewModel> GetEnumerator()
        {
            return Comments.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return Comments.GetEnumerator();
        }
    }
}