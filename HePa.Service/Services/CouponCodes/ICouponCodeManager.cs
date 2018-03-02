using HePa.Core.Helpers;
using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.CouponCodes
{
    public interface ICouponCodeManager
    {
        /// <summary>
        /// Add new CP
        /// </summary>
        /// <param name="cp">new CP object</param>
        /// <returns>Add new CP</returns>
        ServiceResult Add(CouponCode cp);
        Task<ServiceResult> AddAsync(CouponCode cp);

        /// <summary>
        /// Update existed CP
        /// </summary>
        /// <param name="cp">new CP object</param>
        /// <returns>ServiceResult Suucess or Error</returns>
        ServiceResult Update(CouponCode cp);
        Task<ServiceResult> UpdateAsync(CouponCode cp);

        /// <summary>
        /// Delete existed CP
        /// </summary>
        /// <param name="id">CP's Id</param>
        /// <returns>ServiceResult Sucess or Error</returns>
        ServiceResult Delete(CouponCode cp);
        Task<ServiceResult> DeleteAsync(CouponCode cp);

        /// <summary>
        /// get all CP
        /// </summary>
        /// <returns>cp list</returns>
        IList<CouponCode> GetAllCouponCodes();
        Task<IList<CouponCode>> GetAllCouponCodesAsync();

        /// <summary>
        /// get unexpired CP
        /// </summary>
        /// <returns>cp list</returns>
        IList<CouponCode> GetUnexpiredCounponCodes();
        Task<IList<CouponCode>> GetUnexpiredCounponCodesAsync();

        /// <summary>
        /// get CP by CP's Id
        /// </summary>
        /// <param name="id">CP's Id</param>
        /// <returns>CP matching Id</returns>
        CouponCode GetCouponCodeById(string id);
        Task<CouponCode> GetCouponCodeByIdAsync(string id);

        /// <summary>
        /// get CP by CP's Id
        /// </summary>
        /// <param name="id">CP's Id</param>
        /// <returns>CP matching Id</returns>
        CouponCode GetUnexpiredCouponCodeById(string id);
        Task<CouponCode> GetUnexpiredCouponCodeByIdAsync(string id);

        /// <summary>
        /// decrease amount usage
        /// </summary>
        /// <param name="id">CP's Id</param>
        /// <returns>CP matching Id</returns>
        ServiceResult DecreasingUsageAmount(string id);
        Task<ServiceResult> DecreasingUsageAmountAsync(string id);
    }
}
