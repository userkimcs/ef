using HePa.Core.Entities;
using HePa.Core.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.HepaPassportServices
{
    public interface IHepaPassportService
    {
        /// <summary>
        /// Add new hepa passport
        /// </summary>
        /// <param name="e"></param>
        /// <returns></returns>
        ServiceResult Insert(HepaPassport e);
        ServiceResult Insert(string id, int expirytDate);
        Task<ServiceResult> InsertAsync(HepaPassport e);
        Task<ServiceResult> InsertAsync(string id, int expirytDate);
        /// <summary>
        /// Auto insert
        /// </summary>
        /// <param name="start">start number</param>
        /// <param name="end">end number</param>
        /// <param name="expirydate">expirydate (by days)</param>
        /// <returns></returns>
        ServiceResult Insert(int start, int end, int expirydate);
        Task<ServiceResult> InsertAsync(int start, int end, int expirydate);
        /// <summary>
        /// Delete 1 hapa passport
        /// </summary>
        /// <param name="e"></param>
        /// <returns></returns>
        ServiceResult Delete(HepaPassport e);
        Task<ServiceResult> DeleteAsync(HepaPassport e);

        /// <summary>
        /// Edit 1 hepa passport
        /// </summary>
        /// <param name="e"></param>
        /// <returns></returns>
        ServiceResult Update(HepaPassport e);
        Task<ServiceResult> UpdateAsync(HepaPassport e);

        /// <summary>
        /// Get all hepa passports in database
        /// </summary>
        /// <returns></returns>
        IList<HepaPassport> GetAll();
        Task<IList<HepaPassport>> GetAllAsync();

        /// <summary>
        /// Get hepa passports in specific date
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        IList<HepaPassport> GetByCreatedDate(DateTime date);
        Task<IList<HepaPassport>> GetByCreatedDateAsync(DateTime date);

        /// <summary>
        /// Get 1 hepa passport by specific id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        HepaPassport GetById(string id);
        Task<HepaPassport> GetByIdAsync(string id);

        /// <summary>
        /// Get 1 hepa pasport by specific code
        /// </summary>
        /// <param name="code"></param>
        /// <returns></returns>
        HepaPassport GetByCode(string code);
        Task<HepaPassport> GetByCodeAsync(string code);

        /// <summary>
        /// is passport used?
        /// by userid
        /// </summary>
        /// <param name="code"></param>
        /// <returns>true: if code is used, and vice sera</returns>
        bool IsUsed(string code, string id);
        Task<bool> IsUsedAsync(string code, string id);

        /// <summary>
        /// Get all hepa used passports
        /// </summary>
        /// <returns></returns>
        IList<HepaPassport> GetAllUsedCode();
        Task<IList<HepaPassport>> GetAllUsedCodeAsync();

        /// <summary>
        /// Active user passport
        /// </summary>
        /// <returns></returns>
        ServiceResult Active(string userId, string code, string id);
        Task<ServiceResult> ActiveAsync(string userId, string code, string id);

        /// <summary>
        /// Get active codes by userid
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        IList<HepaPassport> GetUserActiveCodes(string userId);
        Task<IList<HepaPassport>> GetUserActiveCodesAsync(string userId);
    }
}
