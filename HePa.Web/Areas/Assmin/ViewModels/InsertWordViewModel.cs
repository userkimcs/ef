using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.Admin.ViewModels
{
    public class InsertWordViewModel
    {
        public HttpPostedFileBase File { get; set; }
        public string ClassId { get; set; }

        public InsertWordViewModel()
        {

        }

        public InsertWordViewModel(HttpPostedFileBase file, string classId)
        {
            this.File = file;
            this.ClassId = classId;
        }
    }
}