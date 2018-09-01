using System.Web.Http;

namespace TaskAPI
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            //System.Web.Http.HttpConfiguration.MapHttpAttributeRoutes();

            // System.Web.Http.HttpConfiguration configg = new HttpConfiguration();


            //config.Routes.MapHttpRoute(
            //    name: "DefaultApi",
            //    routeTemplate: "api/{controller}/{id}",
            //    defaults: new { id = RouteParameter.Optional }
            //);

           

            config.Routes.MapHttpRoute(
             name: "DefaultApi",
             routeTemplate: "api/{controller}/{action}/{Id}",
             defaults: new { Id = RouteParameter.Optional }
         );
            config.EnableCors();


        }

              
    }
}
