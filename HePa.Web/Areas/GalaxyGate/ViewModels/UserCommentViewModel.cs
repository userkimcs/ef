
using HePa.Core.Entities;
using System.Collections.Generic;
namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class UserCommentViewModel
    {
        public IList<WordComment> Comments { get; set; }
        public UserCommentViewModel()
        {
            Comments = new List<WordComment>();
        }
    }
}