using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Data.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.CurrencyServices
{
    public class CurrencyUserManager : ICurrencyUserManager
    {
        private readonly IRepository<Currency_User> m_cuRepository;
        public CurrencyUserManager(IRepository<Currency_User> m_cuRepository)
        {
            this.m_cuRepository = m_cuRepository;
        }
        public Core.Helpers.ServiceResult Create(Core.Entities.Currency_User cu)
        {
            m_cuRepository.Insert(cu);
            m_cuRepository.SaveChanges();
            return ServiceResult.Success;
        }

        public async Task<Core.Helpers.ServiceResult> CreateAsync(Core.Entities.Currency_User cu)
        {
            return await Task.Run(() => Create(cu));
        }

        public Core.Helpers.ServiceResult Update(Core.Entities.Currency_User cu)
        {
            m_cuRepository.Update(cu);
            m_cuRepository.SaveChanges();
            return ServiceResult.Success;
        }

        public async Task<Core.Helpers.ServiceResult> UpdateAsync(Core.Entities.Currency_User cu)
        {
            return await Task.Run(() => Update(cu));
        }

        public int GetCurrentCurrenyAmount(string userId, string currencyId)
        {
            return m_cuRepository.FindEntity(x => x.UserId == userId && x.CurrencyId == currencyId).Amount;
        }

        public async Task<int> GetCurrentCurrenyAmountAsync(string userId, string currencyId)
        {
            return await Task.Run(() => GetCurrentCurrenyAmount(userId, currencyId));
        }

        public Currency_User GetCurrencyUserObject(string userId, string currencyId)
        {
            return m_cuRepository.FindEntity(x => x.UserId == userId && x.CurrencyId == currencyId);
        }

        public async Task<Currency_User> GetCurrencyUserObjectAsync(string userId, string currencyId)
        {
            return await Task.Run(() => GetCurrencyUserObject(userId, currencyId));
        }

        public ServiceResult IncreaseCurrencyAmount(string userId, string currencyId, int amount)
        {
            var obj = GetCurrencyUserObject(userId, currencyId);
            obj.Amount += amount;
            Update(obj);
            return ServiceResult.Success;
        }

        public async Task<ServiceResult> IncreaseCurrencyAmountAsync(string userId, string currencyId, int amount)
        {
            return await Task.Run(() => IncreaseCurrencyAmount(userId, currencyId, amount));
        }
    }
}
