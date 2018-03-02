using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HePa.Web.Startup))]
namespace HePa.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
