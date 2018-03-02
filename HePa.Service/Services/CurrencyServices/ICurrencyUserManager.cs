using HePa.Core.Entities;
using HePa.Core.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.CurrencyServices
{
    public interface ICurrencyUserManager
    {
         ServiceResult Create(Currency_User cu);
         Task<ServiceResult> CreateAsync(Currency_User cu);

         ServiceResult Update(Currency_User cu);
         Task<ServiceResult> UpdateAsync(Currency_User cu);

        int GetCurrentCurrenyAmount(string userId, string currencyId);
        Task<int> GetCurrentCurrenyAmountAsync(string userId, string currencyId);

        Currency_User GetCurrencyUserObject(string userId, string currencyId);
        Task<Currency_User> GetCurrencyUserObjectAsync(string userId, string currencyId);

        ServiceResult IncreaseCurrencyAmount(string userId, string currencyId, int amount);
        Task<ServiceResult> IncreaseCurrencyAmountAsync(string userId, string currencyId, int amount);
    }
}
