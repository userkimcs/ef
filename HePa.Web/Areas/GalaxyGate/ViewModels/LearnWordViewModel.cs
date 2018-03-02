

using HePa.Core.Entities;
using HePa.Core.Helpers;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class LearnWordViewModel
    {
        public Word Word { get; set; }
        public List<ApplicationUser> Accounts { get; set; }
        public PagedData<WordComment> Comments { get; set; }
        [Required]
        public string Comment { get; set; }

        public LearnWordViewModel()
        {
            Comments = new PagedData<WordComment>();
            Word = new Word();
        }


    }
}