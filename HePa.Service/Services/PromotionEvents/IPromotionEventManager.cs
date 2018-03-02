using HePa.Core.Entities;
using HePa.Core.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.PromotionEvents
{
    public interface IPromotionEventManager
    {
        /// <summary>
        /// Add PE
        /// </summary>
        /// <param name="pe">new PromotionEvent Object</param>
        /// <returns>ServiceResult Suucess or Error</returns>
        ServiceResult Add(PromotionEvent pe);
        Task<ServiceResult> AddAsync(PromotionEvent pe);

        /// <summary>
        /// Update existed PE
        /// </summary>
        /// <param name="pe">new PE object</param>
        /// <returns>ServiceResult Suucess or Error</returns>
        ServiceResult Update(PromotionEvent pe);
        Task<ServiceResult> UpdateAsync(PromotionEvent pe);

        /// <summary>
        /// Delete existed PE
        /// </summary>
        /// <param name="id">couponCode</param>
        /// <returns>ServiceResult Sucess or Error</returns>
        ServiceResult Delete(string id);
        Task<ServiceResult> DeleteAsync(string id);

        /// <summary>
        /// get all promotion events
        /// </summary>
        /// <returns>pe list</returns>
        IList<PromotionEvent> GetAllPromotionEvents();
        Task<IList<PromotionEvent>> GetAllPromotionEventsAsync();

        /// <summary>
        /// get unexpired promotion events
        /// </summary>
        /// <returns>pe list</returns>
        IList<PromotionEvent> GetUnexpiredPromotionEvents();
        Task<IList<PromotionEvent>> GetUnexpiredPromotionEventsAsync();

        /// <summary>
        /// get PE by PE's Id
        /// </summary>
        /// <param name="id">PE's Id</param>
        /// <returns>promotion event matching Id</returns>
        PromotionEvent GetPromotionEventById(string id);
        Task<PromotionEvent> GetPromotionEventByIdAsync(string id);

        /// <summary>
        /// get PE by PE's name
        /// </summary>
        /// <param name="name">PE's name</param>
        /// <returns>PE matching Name</returns>
        PromotionEvent GetPromotionEventByName(string name);
        Task<PromotionEvent> GetPromotionEventByNameAsync(string name);
    }
}
