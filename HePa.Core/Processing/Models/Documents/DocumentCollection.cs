

using System.Collections.Generic;
namespace HePa.Core.Processing.Models.Documents
{
    public class DocumentCollection
    {
        public List<string> DocumentList { get; set; }

        public DocumentCollection()
        {
            DocumentList = new List<string>();
        }
    }
}
