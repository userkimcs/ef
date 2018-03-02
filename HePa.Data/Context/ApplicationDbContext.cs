using System;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration;
using System.Reflection;
using System.Linq;
using HePa.Core.Entities;
using HePa.Core;
using System.Data.Entity.Infrastructure;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using HePa.Data.Context;

namespace HePa.Data.Context
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>, IApplicationDbContext
    {
        public void SafeAttach<TEntity>(
        TEntity entity,
        Func<TEntity, object> keyFn) where TEntity : class
        {
            var existing = this.Set<TEntity>().Local
                .FirstOrDefault(x => Equals(keyFn(x), keyFn(entity)));
            if (existing != null)
                this.Entry(existing).State = EntityState.Detached;

            this.Set<TEntity>().Attach(entity);
        }


        public ApplicationDbContext()
            : base("name=DefaultConnection")
        {
            this.Configuration.AutoDetectChangesEnabled = false;
            this.Configuration.ValidateOnSaveEnabled = false;
            // this.Configuration.LazyLoadingEnabled = false;
        }
        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }

        public new IDbSet<TEntity> Set<TEntity>() where TEntity : class
        {
            return base.Set<TEntity>();
        }
        public new DbEntityEntry<TEntity> Entry<TEntity>(TEntity entity) where TEntity : class
        {
            return base.Entry(entity);
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            var typesToRegister = Assembly.GetExecutingAssembly().GetTypes()
                .Where(type => !String.IsNullOrEmpty(type.Namespace))
                .Where(type => type.BaseType != null && type.BaseType.IsGenericType
                && type.BaseType.GetGenericTypeDefinition() == typeof(EntityTypeConfiguration<>));
            foreach (var type in typesToRegister)
            {
                dynamic configurationInstance = Activator.CreateInstance(type);
                modelBuilder.Configurations.Add(configurationInstance);
            }
            // modelBuilder.Entity<IdentityUser>().ToTable("ApplicationUsers", "dbo");
            base.OnModelCreating(modelBuilder);
        }

        // public System.Data.Entity.DbSet<HePa.Object.Entities.Account> Users { get; set; }  

        public override int SaveChanges()
        {
            return base.SaveChanges();
        }

        public override Task<int> SaveChangesAsync()
        {
            return base.SaveChangesAsync();
        }

        public System.Data.Entity.DbSet<HePa.Core.Entities.PromotionEvent> PromotionEvents { get; set; }

        public System.Data.Entity.DbSet<HePa.Core.Entities.HepaPassport> HepaPassports { get; set; }
    }
}
