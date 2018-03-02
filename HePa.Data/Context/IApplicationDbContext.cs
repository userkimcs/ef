using HePa.Core;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Data.Context
{
    public interface IApplicationDbContext : IDisposable
    {

        int SaveChanges();
        Task<int> SaveChangesAsync();
        IDbSet<TEntity> Set<TEntity>() where TEntity : class;

        DbEntityEntry<TEntity> Entry<TEntity>(TEntity entity) where TEntity : class;
        void SafeAttach<TEntity>(TEntity entity, Func<TEntity, object> keyFn) where TEntity : class;
    }
}
