using System.ComponentModel.DataAnnotations;

namespace HePa.Web.Areas.GalaxyGate.ViewModels
{
    public class WordCommentReplyViewModel
    {
        [Required]
        public string Comment { get; set; }
    }
}