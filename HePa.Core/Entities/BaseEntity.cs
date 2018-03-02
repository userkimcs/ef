
using System;
using System.ComponentModel.DataAnnotations;
namespace HePa.Core
{
    public class BaseEntity
    {
        [StringLength(128)]
        public string Id { get; set; } 
    }
}
