using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.ViewModels.WordViewModels
{
    public class CreateWordViewModel
    {
        public string aWord { get; set; }
        public string IPA { get; set; }
        public string Meaning { get; set; }
        public string AudioLink { get; set; }
        public Complexity Complexity { get; set; }
        public string PartOfSpeech { get; set; }
    }
}