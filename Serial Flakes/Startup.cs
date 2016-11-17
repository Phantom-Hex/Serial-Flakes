using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Serial_Flakes.Startup))]
namespace Serial_Flakes
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
