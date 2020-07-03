using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace ProductsWebApi
{
    public static class WebApiConfig
    {
        //ado
        //public static MySqlConnection conn()
        //{
        //    string con_String = "server=localhost;port=3306;Database=producsdb;username=root;";
        //    MySqlConnection connection = new MySqlConnection(con_String);
        //    return connection;
        //}
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}
