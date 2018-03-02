

using HePa.Data.Context;
using HePa.Core;
using System;
using System.Data.Entity;
using System.Linq.Expressions;
using System.Threading.Tasks;
using System.Linq;
using System.Collections.Generic;
namespace HePa.Data.Context
{
    /*
     * Adding Include method for select
     * Kim T. Nguyen
     */
    /// <summary>
    /// 
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface IRepository<T>
    {
        IQueryable<T> Select(Expression<Func<T, bool>> filter = null, 
            Func<IQueryable<T>, IOrderedQueryable<T>> orderby = null, 
            List<string> includes = null, 
            List<IQueryable<T>> excepts = null,
            int? page = null, int? pageSize = null);
        Task<IQueryable<T>> SelectAsync(Expression<Func<T, bool>> filter = null,
            Func<IQueryable<T>, IOrderedQueryable<T>> orderby = null,
            List<string> includes = null,
            List<IQueryable<T>> excepts = null,
            int? page = null, int? pageSize = null);

        T SelectFirst(Expression<Func<T, bool>> filter = null,
            List<string> includes = null);
        Task<T> SelectFirstAsync(Expression<Func<T, bool>> filter = null,
            List<string> includes = null);

        /// <summary>
        /// Find all entity in database 
        /// </summary>
        /// <returns>List of entities</returns>
        IQueryable<T> Find();
        /// <summary>
        /// Get an entity by its Id
        /// </summary>
        /// <param name="id">Entity id</param>Expression<Func<T, object>> include
        /// <returns>Entity type TEntity</returns>
        // Get entity by lambda expression
        T FindEntity(Expression<Func<T, bool>> criteria);
        // T FindEntity(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include);


        // Get all entities matches lambda expression
        IQueryable<T> FindEntities(Expression<Func<T, bool>> criteria);
        //IQueryable<T> FindEntities(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include);

        // Insert an entity
        void Insert(T entity);
        // Update an entity
        void Update(T newEntity);
        // Delete an entity
        void Delete(T entity);
        void Delete(Expression<Func<T, bool>> criteria);
        void Dispose();
        void SaveChanges();
        /// <summary>
        /// Get entity with tracking
        /// </summary>
        /// <param name="criteria"></param>
        /// <returns></returns>
        T GetEntity(Expression<Func<T, bool>> criteria);
        //T GetEntity(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include);

        /// <summary>
        /// Get list entities with tracking
        /// </summary>
        /// <param name="criteria"></param>
        /// <returns></returns>
        IQueryable<T> GetEntities(Expression<Func<T, bool>> criteria);
        //IQueryable<T> GetEntities(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include);
        /// <summary>
        /// Find all entity from database by using linq expression 
        /// </summary>
        /// <param name="criteria">Linq expression: conditions</param>
        /// <param name="orderBy">Linq expression: order by comlumn</param>
        /// <param name="isAsc">Bool: default is acs</param>
        /// <param name="PageSize">Number of items in a page</param>
        /// <param name="NumberOfPages">Number of pages</param>
        /// <returns>List of entities type TEntity</returns>
        IQueryable<T> FindEntities(Expression<Func<T, bool>> criteria, 
                        int page, int pageSize, ref int numberOfPages,
                        Func<T, object> orderBy, bool isAsc = true);

        // Async methods 
        // 
        Task<T> FindEntityAsync(Expression<Func<T, bool>> criteria);
        //Task<T> FindEntityAsync(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include);


        Task<IQueryable<T>> FindEntitiesAsync(Expression<Func<T, bool>> criteria);
        //Task<IQueryable<T>> FindEntitiesAsync(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include);
        Task<IQueryable<T>> FindAsync();
        Task InsertAsync(T entity);
        Task UpdateAsync(T newEntity);
        Task DeleteAsync(T entity);
        Task DeleteAsync(Expression<Func<T, bool>> criteria);
        Task<int> SaveChangesAsync();
        IQueryable<T> FindEntities(Expression<Func<T, bool>> criteria, 
            int page, int pageSize,
            Func<T, object> orderBy, bool isAsc = true);
        Task<IQueryable<T>> FindEntitiesAsync(Expression<Func<T, bool>> criteria, 
            int page, int pageSize,
            Func<T, object> orderBy, bool isAsc = true);
        IQueryable<T> FindEntities(Expression<Func<T, bool>> criteria, Func<T, object> orderBy, bool isAsc = true);
        Task<IQueryable<T>> FindEntitiesAsync(Expression<Func<T, bool>> criteria, Func<T, object> orderBy, bool isAsc = true);

        /// <summary>
        /// Finding entity with column
        /// </summary>
        /// <param name="criteria">conditional query</param>
        /// <param name="collumn">column</param>
        /// <returns></returns>
        IQueryable<T> FindEntitiesExcept(Expression<Func<T, bool>> criteria, IQueryable<T> ex);
        Task<IQueryable<T>> FindEntitiesExceptAsync(Expression<Func<T, bool>> criteria, IQueryable<T> ex);
    }
}
