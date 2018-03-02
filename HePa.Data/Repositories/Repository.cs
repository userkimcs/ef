using HePa.Data.Context;
using HePa.Core;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using EntityFramework.Extensions;
using System.Data.Entity.Core;
using System.Data.Entity.Migrations;

namespace HePa.Data.Context
{
    public class Repository<T> : IRepository<T> where T : class
    {
        private readonly IApplicationDbContext m_context;
        internal IDbSet<T> m_entities;
        private int m_size;
        public Repository(IApplicationDbContext m_context)
        {
            this.m_context = m_context;
            this.m_entities = this.m_context.Set<T>();
            this.m_size = this.m_entities.Count();
        }

        // Get all Entities 
        public IDbSet<T> GetEntities()
        {
            return this.m_entities;
        }
        public IQueryable<T> Find()
        {
            return this.m_entities.AsNoTracking();
        }
        // Get entity by lambda expression
        public T FindEntity(Expression<Func<T, bool>> criteria)
        {
            return this.m_entities.AsNoTracking().FirstOrDefault(criteria);
        }
        // Get all entities matches lambda expression
        public IQueryable<T> FindEntities(Expression<Func<T, bool>> criteria)
        {
            return this.m_entities.AsNoTracking().Where(criteria);
        }

        // Insert an entity
        public void Insert(T entity)
        {
            //var state = this.m_context.Entry(entity).State;
            //m_entities.Add(entity);
            m_entities.Attach(entity);
            this.m_context.Entry(entity).State = EntityState.Added;
        }
        // Update an entity
        public void Update(T newEntity)
        {
            // this.m_context.Entry(newEntity).State = EntityState.Modified;
            m_entities.AddOrUpdate(newEntity);
        }
        // Delete an entity
        public void Delete(T entity)
        {
            m_entities.Attach(entity);
            m_entities.Remove(entity);
            // dynamic obj = m_entities.Remove(entity);
        }
        public void Dispose()
        {
            if (this.m_context != null)
            {
                this.m_context.Dispose();
            }
            else
            {
                // Do nothing
            }
        }
        public Task<int> SaveChangesAsync()
        {
            return this.m_context.SaveChangesAsync();
        }

        public void SaveChanges()
        {
            int records = this.m_context.SaveChanges();
            this.m_context.SaveChanges();
        }
        public async Task<T> FindEntityAsync(Expression<Func<T, bool>> criteria)
        {
            return await Task.Run(() => FindEntity(criteria));
        }
        public async Task<IQueryable<T>> FindEntitiesAsync(Expression<Func<T, bool>> criteria)
        {
            return await Task.Run(() => FindEntities(criteria));
        }

        public async Task<IQueryable<T>> FindAsync()
        {
            return await Task.Run(() => Find());
        }

        public async Task InsertAsync(T entity)
        {
            await Task.Run(() => Insert(entity));
        }
        public async Task UpdateAsync(T newEntity)
        {
            await Task.Run(() => Update(newEntity));
        }
        public async Task DeleteAsync(T entity)
        {
            await Task.Run(() => Delete(entity));
        }


        public IQueryable<T> FindEntities(Expression<Func<T, bool>> criteria,
            int page, int pageSize, ref int numberOfPages,
            Func<T, object> orderBy, bool isAsc = true)
        {
            // Get number of pages
            int numberOfItems = this.m_context.Set<T>().Count();
            numberOfPages = System.Convert.ToInt32(Math.Ceiling(1.0 * numberOfItems / pageSize));
            if (isAsc == true)
            {
                return this.m_entities.AsNoTracking().Where(criteria)
                    .OrderBy(orderBy).Skip(pageSize * (page - 1)).Take(pageSize).AsQueryable();
            }
            else
            {
                return this.m_entities.Where(criteria)
                    .OrderByDescending(orderBy).Skip(pageSize * (page - 1)).Take(pageSize).AsQueryable();
            }
        }




        public T GetEntity(Expression<Func<T, bool>> criteria)
        {
            return this.m_entities.AsNoTracking().FirstOrDefault(criteria);
        }

        public IQueryable<T> GetEntities(Expression<Func<T, bool>> criteria)
        {
            return this.m_entities.AsNoTracking().Where(criteria);
        }

        public IQueryable<T> FindEntities(Expression<Func<T, bool>> criteria, int page, int pageSize, Func<T, object> orderBy, bool isAsc = true)
        {
            if (isAsc == true)
            {
                return this.FindEntities(criteria)
                    .OrderBy(orderBy).Skip(pageSize * (page - 1)).Take(pageSize).AsQueryable();
            }
            else
            {
                return this.FindEntities(criteria)
                    .OrderByDescending(orderBy).Skip(pageSize * (page - 1)).Take(pageSize).AsQueryable();
            }
        }

        public async Task<IQueryable<T>> FindEntitiesAsync(Expression<Func<T, bool>> criteria, int page, int pageSize, Func<T, object> orderBy, bool isAsc = true)
        {
            return await Task.Run(() => FindEntities(criteria, page, pageSize, orderBy, isAsc));
        }


        public IQueryable<T> FindEntities(Expression<Func<T, bool>> criteria, Func<T, object> orderBy, bool isAsc = true)
        {
            if (isAsc == false)
            {
                return this.FindEntities(criteria).OrderByDescending(orderBy).AsQueryable();
            }
            else
            {
                return this.FindEntities(criteria).OrderBy(orderBy).AsQueryable();
            }
        }

        public async Task<IQueryable<T>> FindEntitiesAsync(Expression<Func<T, bool>> criteria, Func<T, object> orderBy, bool isAsc = true)
        {
            return await Task.Run(() => FindEntities(criteria, orderBy, isAsc));
        }


        public void Delete(Expression<Func<T, bool>> criteria)
        {
            this.m_entities.AsNoTracking().Where(criteria).Delete();
            // this.m_entities.Where(criteria).ToList().ForEach(p => this.m_entities.Remove(p));
        }

        public async Task DeleteAsync(Expression<Func<T, bool>> criteria)
        {
            await this.m_entities.AsNoTracking().Where(criteria).DeleteAsync();
            // await Task.Run(() => Delete(criteria));
        }



        public IQueryable<T> FindEntitiesExcept(Expression<Func<T, bool>> criteria, IQueryable<T> ex)
        {
            return this.m_entities.AsNoTracking().Where(criteria).Except(ex);
        }

        public async Task<IQueryable<T>> FindEntitiesExceptAsync(Expression<Func<T, bool>> criteria, IQueryable<T> ex)
        {
            return await Task.Run(() => FindEntitiesExcept(criteria, ex));
        }


        /*
         * Update Nov 10 2015
         * Kim T. Nguyen
         * Using include expression
         */
        public T FindEntity(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include)
        {
            return this.m_entities.AsNoTracking().Include(include).FirstOrDefault();
        }

        public IQueryable<T> FindEntities(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include)
        {
            return this.m_entities.AsNoTracking().Include(include).Where(criteria);
        }

        public T GetEntity(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include)
        {
            return this.m_entities.AsNoTracking().Include(include).FirstOrDefault();
        }

        public IQueryable<T> GetEntities(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include)
        {
            return this.m_entities.AsNoTracking().Include(include).Where(criteria);
        }

        public async Task<T> FindEntityAsync(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include)
        {
            return await Task.Run(() => this.FindEntityAsync(criteria, include));
        }

        public async Task<IQueryable<T>> FindEntitiesAsync(Expression<Func<T, bool>> criteria, Expression<Func<T, object>> include)
        {
            return await Task.Run(() => FindEntitiesAsync(criteria, include));
        }

        public IQueryable<T> Select(Expression<Func<T, bool>> filter = null,
            Func<IQueryable<T>, IOrderedQueryable<T>> orderby = null,
            List<string> includes = null,
            List<IQueryable<T>> excepts = null,
            int? page = null, int? pageSize = null)
        {
            // Create select * from
            IQueryable<T> query = m_entities.AsNoTracking();
            // Select from relationship 
            if (includes != null)
            {
                foreach (var include in includes)
                {
                    query = query.Include(include);
                }
            }
            // Order by
            if (orderby != null)
            {
                query = orderby(query);
            }
            // filter 
            if (filter != null)
            {
                query = query.Where(filter);
            }
            // Pagenation 
            if (page != null && pageSize != null)
            {
                query = query.Skip((page.Value - 1) * pageSize.Value).Take(pageSize.Value);
            }

            if (excepts != null)
            {
                foreach (var except in excepts)
                {
                    query = query.Except(except);
                }
            }
            return query;
        }


        public async Task<IQueryable<T>> SelectAsync(Expression<Func<T, bool>> filter = null,
            Func<IQueryable<T>, IOrderedQueryable<T>> orderby = null,
            List<string> includes = null,
            List<IQueryable<T>> excepts = null,
            int? page = null, int? pageSize = null)
        {
            return await Task.Run(() => Select(filter, orderby, includes, excepts, page, pageSize));
        }


        public T SelectFirst(Expression<Func<T, bool>> filter = null, 
                             List<string> includes = null)
        {
            // Create select * from
            IQueryable<T> query = m_entities.AsNoTracking();
            // Select from relationship 
            if (includes != null)
            {
                foreach (var include in includes)
                {
                    query = query.Include(include);
                }
            }
            // filter 
            if (filter != null)
            {
                query = query.Where(filter);
            }
            return query.FirstOrDefault();
        }

        public async Task<T> SelectFirstAsync(Expression<Func<T, bool>> filter = null,
                                             List<string> includes = null)
        {
            return await Task.Run(() => SelectFirst(filter, includes));
        }
    }
}
