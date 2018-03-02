using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Data.Context;
using HePa.Service.Services.CouponCodes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.CouponCodes
{
    public class CouponCodeManager : ICouponCodeManager
    {
        private readonly IRepository<CouponCode> m_counponCodeRespository;
        public CouponCodeManager(IRepository<CouponCode> m_counponCodeRespository)
        {
            this.m_counponCodeRespository = m_counponCodeRespository;
        }
        public Core.Helpers.ServiceResult Add(Core.Entities.CouponCode cp)
        {
            m_counponCodeRespository.Insert(cp);
            m_counponCodeRespository.SaveChanges();
            return ServiceResult.Success;
        }

        public async Task<Core.Helpers.ServiceResult> AddAsync(Core.Entities.CouponCode cp)
        {
            return await Task.Run(() => Add(cp));
        }

        public Core.Helpers.ServiceResult Update(Core.Entities.CouponCode cp)
        {
            m_counponCodeRespository.Update(cp);
            m_counponCodeRespository.SaveChanges();
            return ServiceResult.Success;
        }

        public async Task<Core.Helpers.ServiceResult> UpdateAsync(Core.Entities.CouponCode cp)
        {
            return await Task.Run(() => Update(cp));
        }

        public Core.Helpers.ServiceResult Delete(CouponCode cp)
        {
            m_counponCodeRespository.Delete(cp);
            m_counponCodeRespository.SaveChanges();
            return ServiceResult.Success;
        }
 
        public async Task<Core.Helpers.ServiceResult> DeleteAsync(CouponCode cp)
        {
            return await Task.Run(() => Delete(cp));
        }

        public IList<Core.Entities.CouponCode> GetAllCouponCodes()
        {
            var couponCodes = m_counponCodeRespository.Find().ToList();
            return couponCodes;
        }

        public async Task<IList<Core.Entities.CouponCode>> GetAllCouponCodesAsync()
        {
            return await Task.Run(() => GetAllCouponCodes());
        }

        public IList<Core.Entities.CouponCode> GetUnexpiredCounponCodes()
        {
            DateTime now = DateTime.Now;
            var couponCodes = m_counponCodeRespository.FindEntities(x => now >= x.CreateDate &&  now < x.EndDate).ToList();
            return couponCodes;
        }

        public async Task<IList<Core.Entities.CouponCode>> GetUnexpiredCounponCodesAsync()
        {
            return await Task.Run(() => GetUnexpiredCounponCodes());
        }

        public Core.Entities.CouponCode GetCouponCodeById(string id)
        {
            return m_counponCodeRespository.FindEntity(x => x.Id == id);
        }

        public async Task<Core.Entities.CouponCode> GetCouponCodeByIdAsync(string id)
        {
            return await Task.Run(() => GetCouponCodeById(id));
        }

        public CouponCode GetUnexpiredCouponCodeById(string id)
        {
            DateTime now = DateTime.Now;
            var couponCode = m_counponCodeRespository.GetEntity(x => x.Id == id && now >= x.CreateDate && now < x.EndDate);
            return couponCode;
        }

        public async Task<CouponCode> GetUnexpiredCouponCodeByIdAsync(string id)
        {
            return await Task.Run(() => GetUnexpiredCouponCodeById(id));
        }

        public ServiceResult DecreasingUsageAmount(string id)
        {
            try
            {
                var cp = m_counponCodeRespository.FindEntity(x => x.Id == id);
                cp.LimitedCondition -= 1;
                m_counponCodeRespository.Update(cp);
                m_counponCodeRespository.SaveChanges();
                return ServiceResult.Success;
            }
            catch(Exception ex)
            {
                return ServiceResult.AddError(ex.Data.ToString());
            }
        }

        public async Task<ServiceResult> DecreasingUsageAmountAsync(string id)
        {
            return await Task.Run(() => DecreasingUsageAmount(id));
        }
    }
}
