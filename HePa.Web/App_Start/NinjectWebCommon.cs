[assembly: WebActivatorEx.PreApplicationStartMethod(typeof(HePa.Web.App_Start.NinjectWebCommon), "Start")]
[assembly: WebActivatorEx.ApplicationShutdownMethodAttribute(typeof(HePa.Web.App_Start.NinjectWebCommon), "Stop")]

namespace HePa.Web.App_Start
{
    using System;
    using System.Web;

    using Microsoft.Web.Infrastructure.DynamicModuleHelper;

    using Ninject;
    using Ninject.Web.Common;
    using HePa.Data.Context;
    using HePa.Service.Services;
    using Microsoft.AspNet.Identity;
    using HePa.Core.Entities;
    using Microsoft.AspNet.Identity.EntityFramework;
    using Microsoft.Owin.Security;
    using System.Net;
    using HePa.Service.Services.Lectures;
    using HePa.Service.Services.Histories;
    using HePa.Service.Services.Feedbacks;
    using HePa.Service.Services.PromotionEvents;
    using HePa.Service.Services.CouponCodes;
    using HePa.Service.Services.ExperienceServices;
    using HePa.Service.Services.CurrencyServices;
    using HePa.Service.Services.Users;
    using HePa.Service.Services.HepaPassportServices;
    using HePa.Service.Services.LookUp;

    public static class NinjectWebCommon
    {
        private static readonly Bootstrapper bootstrapper = new Bootstrapper();

        /// <summary>
        /// Starts the application
        /// </summary>
        public static void Start()
        {
            DynamicModuleUtility.RegisterModule(typeof(OnePerRequestHttpModule));
            DynamicModuleUtility.RegisterModule(typeof(NinjectHttpModule));
            bootstrapper.Initialize(CreateKernel);
        }

        /// <summary>
        /// Stops the application.
        /// </summary>
        public static void Stop()
        {
            bootstrapper.ShutDown();
        }

        /// <summary>
        /// Creates the kernel that will manage your application.
        /// </summary>
        /// <returns>The created kernel.</returns>
        private static IKernel CreateKernel()
        {
            var kernel = new StandardKernel();
            try
            {
                kernel.Bind<Func<IKernel>>().ToMethod(ctx => () => new Bootstrapper().Kernel);
                kernel.Bind<IHttpModule>().To<HttpApplicationInitializationHttpModule>();

                RegisterServices(kernel);
                return kernel;
            }
            catch
            {
                kernel.Dispose();
                throw;
            }
        }

        /// <summary>
        /// Load your modules or register your services here!
        /// </summary>
        /// <param name="kernel">The kernel.</param>
        private static void RegisterServices(IKernel kernel)
        {
            kernel.Bind<IApplicationDbContext>().To<ApplicationDbContext>().InRequestScope();
            kernel.Bind(typeof(IRepository<>)).To(typeof(Repository<>)).InRequestScope();
            kernel.Bind<IClassService>().To<ClassService>();
            kernel.Bind<IWordService>().To<WordService>();
            kernel.Bind<IExampleSentanceService>().To<ExampleSentanceService>();
            kernel.Bind<ICommentService>().To<CommentService>();
            kernel.Bind<ILocationService>().To<LocationService>();
            kernel.Bind<IOrderService>().To<OrderService>();
            kernel.Bind<ICourseService>().To<CourseService>();
            kernel.Bind<IUserStore<ApplicationUser>>().To<UserStore<ApplicationUser>>();
            kernel.Bind<IApplicationUserManager>().To<ApplicationUserManager>();
            kernel.Bind<IUserService>().To<UserService>();
            kernel.Bind<ILearnWordService>().To<LearnWordService>();
            kernel.Bind<IOrderAdminManager>().To<OrderAdminManager>();
            kernel.Bind<ILearnWordResultService>().To<LearnWordResultService>();
            kernel.Bind<IFeedbackService>().To<FeedbackService>();
            kernel.Bind<IPromotionEventManager>().To<PromotionEventManager>();
            kernel.Bind<ICouponCodeManager>().To<CouponCodeManager>();
            kernel.Bind<IExperienceService>().To<ExperienceService>();
            kernel.Bind<ICurrencyUserManager>().To<CurrencyUserManager>();
            kernel.Bind<IHepaPassportService>().To<HepaPassportService>();
            // grammar
            kernel.Bind<IGrammarLookUpService>().To<GrammarLookUpService>();
            kernel.Bind<IGrammarEditService>().To<GrammarEditService>();
        }
    }
}
