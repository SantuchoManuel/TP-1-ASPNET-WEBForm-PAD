using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TP1WebSite.Startup))]
namespace TP1WebSite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
