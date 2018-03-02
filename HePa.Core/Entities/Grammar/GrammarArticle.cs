using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using System.Web.Mvc;
namespace HePa.Core.Entities.Grammar
{
    public class GrammarArticle : BaseEntity
    {
        // title of page, include unicode or space
        public string TitleInVietnamese { get; set; }
        public string TitleInEnglish { get; set; }

        // to display in url, not include any unicode and space and special character
        // include index for search by url 
        [Index("IDX_GrammarArticles_Alias")]
        public string Alias { get; set; }

        // The content of page
        public string TextInVietnamese { get; set; }
        public string TextInEnglish { get; set; }
        // counter of visit page
        public int VisitCounter { get; set; }
        // if is leave, there are no child
        public bool IsLeaf { get; set; }

        // relation 
        // if Parent id is null, there is root 
        public string ParentId { get; set; }

        // index for sort 
        public int Index { get; set; }
    }
}
