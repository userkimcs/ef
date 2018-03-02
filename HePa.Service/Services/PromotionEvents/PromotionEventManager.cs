using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Data.Context;

namespace HePa.Service.Services.PromotionEvents
{
    public class PromotionEventManager : IPromotionEventManager
    {
        private readonly IRepository<PromotionEvent> m_promotionEventRespository;
        public PromotionEventManager(IRepository<PromotionEvent> m_promotionEventRespository)
        {
            this.m_promotionEventRespository = m_promotionEventRespository;
        }
        public Core.Helpers.ServiceResult Add(Core.Entities.PromotionEvent pe)
        {
            m_promotionEventRespository.Insert(pe);
            m_promotionEventRespository.SaveChanges();
            return ServiceResult.Success;
        }

        public async Task<Core.Helpers.ServiceResult> AddAsync(Core.Entities.PromotionEvent pe)
        {
            return await Task.Run(() => Add(pe));
        }

        public Core.Helpers.ServiceResult Update(Core.Entities.PromotionEvent pe)
        {
            m_promotionEventRespository.Update(pe);
            m_promotionEventRespository.SaveChanges();
            return ServiceResult.Success;
        }

        public async Task<Core.Helpers.ServiceResult> UpdateAsync(Core.Entities.PromotionEvent pe)
        {
            return await Task.Run(() => Update(pe));
        }

        public Core.Helpers.ServiceResult Delete(string id)
        {
            var pe = GetPromotionEventById(id);
            m_promotionEventRespository.Delete(pe);
            m_promotionEventRespository.SaveChanges();
            return ServiceResult.Success;
        }

        public async Task<Core.Helpers.ServiceResult> DeleteAsync(string id)
        {
            return await Task.Run(() => Delete(id));
        }

        public IList<Core.Entities.PromotionEvent> GetAllPromotionEvents()
        {
            return m_promotionEventRespository.Find().ToList();
        }

        public async Task<IList<Core.Entities.PromotionEvent>> GetAllPromotionEventsAsync()
        {
            return await Task.Run(() => GetAllPromotionEvents());
        }

        public IList<Core.Entities.PromotionEvent> GetUnexpiredPromotionEvents()
        {
            DateTime now = DateTime.Now;
            return m_promotionEventRespository.FindEntities(x => x.EndDate > now && x.CreateDate <= now).ToList();
        }

        public async Task<IList<Core.Entities.PromotionEvent>> GetUnexpiredPromotionEventsAsync()
        {
            return await Task.Run(() => GetUnexpiredPromotionEvents());
        }

        public Core.Entities.PromotionEvent GetPromotionEventById(string id)
        {
            return m_promotionEventRespository.FindEntity(x => x.Id == id);
        }

        public async Task<Core.Entities.PromotionEvent> GetPromotionEventByIdAsync(string id)
        {
            return await Task.Run(() => GetPromotionEventById(id));
        }

        public Core.Entities.PromotionEvent GetPromotionEventByName(string name)
        {
            return m_promotionEventRespository.FindEntity(x => x.Name == name);
        }

        public async Task<Core.Entities.PromotionEvent> GetPromotionEventByNameAsync(string name)
        {
            return await Task.Run(() => GetPromotionEventByName(name));
        }
    }
}
