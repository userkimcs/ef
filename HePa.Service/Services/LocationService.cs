using HePa.Core.Entities;
using HePa.Data.Context;
using HePa.Service.Services;
using System;
using System.Linq;
using System.Threading.Tasks;
namespace HePa.Service.Services
{
    public class LocationService : ILocationService
    {
        private readonly IRepository<City> m_cityRepository;
        private readonly IRepository<District> m_districtRepository;
        private readonly IRepository<Town> m_townRepository;

        public LocationService(IRepository<City> m_cityRepository,
           IRepository<District> m_districtRepository, IRepository<Town> m_townRepository)
        {
            this.m_cityRepository = m_cityRepository;
            this.m_districtRepository = m_districtRepository;
            this.m_townRepository = m_townRepository;
        }



        public System.Collections.Generic.List<City> GetCities()
        {
            return m_cityRepository.Find().ToList();
        }

        public System.Collections.Generic.List<District> GetDistrictsByCityId(string cityId)
        {
            return m_districtRepository.FindEntities(t => t.CityId == cityId).ToList();
        }

        public System.Collections.Generic.List<Town> GetTownsByDistrictId(string districtId)
        {
            return m_townRepository.FindEntities(t => t.DistrictId == districtId).ToList();
        }


        public async System.Threading.Tasks.Task<System.Collections.Generic.List<City>> GetCitiesAsync()
        {
            return await Task.Run(() => GetCities());
        }

        public async System.Threading.Tasks.Task<System.Collections.Generic.List<District>> GetDistrictsByCityIdAsync(string cityId)
        {
            return await Task.Run(() => GetDistrictsByCityId(cityId));
        }

        public async System.Threading.Tasks.Task<System.Collections.Generic.List<Town>> GetTownsByDistrictIdAsync(string districtId)
        {
            return await Task.Run(() => GetTownsByDistrictId(districtId));
        }
    }
}
