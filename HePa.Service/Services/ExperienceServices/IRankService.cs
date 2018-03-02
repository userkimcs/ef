using HePa.Core.Entities;
using HePa.Core.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.Experience
{
    public interface IRankService
    {
        ServiceResult Create(Rank r);
        Task<ServiceResult> CreateAsync(Rank r);

        ServiceResult Delete(Rank r);
        Task<ServiceResult> DeleteAsync(Rank r);

        ServiceResult Update(Rank r);
        Task<ServiceResult> UpdateAsync(Rank r);

        Rank GetRankById(string id);
        Task<Rank> GetRankByIdAsync(string id);

        IEnumerable<Rank> GetRanks();
        Task<IEnumerable<Rank>> GetRanksAsync();

        ServiceResult SetRank(string userID, Rank setRank);
        Task<ServiceResult> SetRankAsync(string userID, Rank setRank);
    }
}
