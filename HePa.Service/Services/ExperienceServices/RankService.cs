using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Data.Context;
using HePa.Service.Services.Experience;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.ExperienceServices
{
    public class RankService : IRankService
    {
        private readonly IRepository<HePa.Core.Entities.Rank> m_rankResponsitory;
        private readonly IRepository<HePa.Core.Entities.Rank_User> m_rankUserResponsitory;
        public RankService(IRepository<HePa.Core.Entities.Rank> m_rankResponsitory, IRepository<HePa.Core.Entities.Rank_User> m_rankUserResponsitory)
        {
            this.m_rankResponsitory = m_rankResponsitory;
            this.m_rankUserResponsitory = m_rankUserResponsitory;
        }
        public Core.Helpers.ServiceResult Create(Core.Entities.Rank r)
        {
            m_rankResponsitory.Insert(r);
            m_rankResponsitory.SaveChanges();
            return ServiceResult.Success;
        }

        public Task<Core.Helpers.ServiceResult> CreateAsync(Core.Entities.Rank r)
        {
            return Task.Run(() => Create(r));
        }

        public Core.Helpers.ServiceResult Delete(Core.Entities.Rank r)
        {
            m_rankResponsitory.Delete(r);
            m_rankResponsitory.SaveChanges();
            return ServiceResult.Success;
        }

        public async Task<Core.Helpers.ServiceResult> DeleteAsync(Core.Entities.Rank r)
        {
            return await Task.Run(() => Delete(r));
        }

        public Core.Helpers.ServiceResult Update(Core.Entities.Rank r)
        {
            m_rankResponsitory.Update(r);
            m_rankResponsitory.SaveChanges();
            return ServiceResult.Success;
        }

        public async Task<Core.Helpers.ServiceResult> UpdateAsync(Core.Entities.Rank r)
        {
            return await Task.Run(() => Update(r));
        }

        public Core.Entities.Rank GetRankById(string id)
        {
            return m_rankResponsitory.FindEntity(x => x.Id == id);
        }

        public async Task<Core.Entities.Rank> GetRankByIdAsync(string id)
        {
            return await Task.Run(() => GetRankById(id));
        }

        public IEnumerable<Rank> GetRanks()
        {
            return m_rankResponsitory.Find();
        }

        public async Task<IEnumerable<Rank>> GetRanksAsync()
        {
            return await Task.Run(() => GetRanks());
        }

        public Core.Helpers.ServiceResult SetRank(string userID, Core.Entities.Rank setRank )
        {
            throw new NotImplementedException();
        }

        public Task<Core.Helpers.ServiceResult> SetRankAsync(string userID, Core.Entities.Rank setRank)
        {
            throw new NotImplementedException();
        }
    }
}
