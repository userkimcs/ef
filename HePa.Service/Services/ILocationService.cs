

using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
namespace HePa.Service.Services
{
    public interface ILocationService
    {
        List<City> GetCities();
        List<District> GetDistrictsByCityId(string cityId);
        List<Town> GetTownsByDistrictId(string districtId);

        // Async methods 
        // 
        Task<List<City>> GetCitiesAsync();
        Task<List<District>> GetDistrictsByCityIdAsync(string cityId);
        Task<List<Town>> GetTownsByDistrictIdAsync(string districtId);
    }
}
