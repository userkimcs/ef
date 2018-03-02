using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class WordCommentViewModel
    {
        public WordComment Comment { get; set; }
        public bool IsLiked { get; set; }
        public bool IsAllowDelete { get; set; }
        public WordCommentReplyViewModel CommentReply { get; set; }
    }
}