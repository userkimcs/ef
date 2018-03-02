using HePa.Core.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HePa.Core.Entities;
using HePa.Data.Context;

namespace HePa.Service.Services.Feedbacks
{
    public class FeedbackService : IFeedbackService {
        private readonly IRepository<Feedback> m_FeedbackRepository;
        public FeedbackService(IRepository<Feedback> m_FeedbackRepository)
        {
            this.m_FeedbackRepository = m_FeedbackRepository;
        }
        public async Task<ServiceResult> PostFeedbackAsync(string Name, string Email, string Phone, string Type, string Url, string Message, DateTime CreatedDate)
        {
            // create entity
            Feedback fb = new Feedback { 
                Id = Guid.NewGuid().ToString(),
                Name = Name,
                Email = Email,
                Phone = Phone,
                Type = Type,
                Url = Url,
                Message = Message,
                CreatedDate = CreatedDate
            };

            // insert entity
            try
            {
                await this.m_FeedbackRepository.InsertAsync(fb);
                await this.m_FeedbackRepository.SaveChangesAsync();
                // successful
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                // Add error
                return ServiceResult.AddError(ex.Message);
            }
        }
    }
}
