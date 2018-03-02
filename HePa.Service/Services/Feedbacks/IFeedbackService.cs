using HePa.Core.Helpers;
using System;
using System.Threading.Tasks;

namespace HePa.Service.Services.Feedbacks
{
    public interface IFeedbackService
    {
        /// <summary>
        /// Post a feedback
        /// </summary>
        /// <param name="Name"></param>
        /// <param name="Email"></param>
        /// <param name="Phone"></param>
        /// <param name="Type"></param>
        /// <param name="Url"></param>
        /// <param name="Message"></param>
        /// <param name="CreatedDate"></param>
        /// <returns></returns>
        Task<ServiceResult> PostFeedbackAsync(string Name, string Email, string Phone, string Type, string Url, string Message, DateTime CreatedDate);
    }
}
