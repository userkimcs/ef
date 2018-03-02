using HePa.Data.Context;
using HePa.Core.Entities;

namespace HePa.Service.Services
{
    public class DatabaseService
    {
        public static ApplicationDbContext CreateDbContext()
        {
            return new ApplicationDbContext();
        }


    }
}
