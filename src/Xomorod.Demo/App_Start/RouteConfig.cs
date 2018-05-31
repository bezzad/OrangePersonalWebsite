using System.Web.Routing;

namespace Xomorod.Demo
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            // ignore
            routes.Ignore(""); //Allow index.html to load
            routes.Ignore("images/*");
            //routes.Ignore("api/*");

            // The following code shows how to prevent routing from handling requests for .axd requests.
            routes.Add(new System.Web.Routing.Route("{resource}.axd/{*pathInfo}",
                new System.Web.Routing.StopRoutingHandler()));

            // localization routes e.g:  http://Xomorod.com/en/
            routes.MapPageRoute("localRoutes",
                "{local}",
                "~/default.aspx", true,
                new RouteValueDictionary
                {
                    {"local", "en"},
                },
                new RouteValueDictionary
                {
                    {"local", "[a-z]{2}"},
                });

            // localization routes e.g:  http://Xomorod.com/
            routes.MapPageRoute("HomeRoutes",
                "",
                "~/default.aspx", true);

            // localization routes e.g:  http://Xomorod.com/
            routes.MapPageRoute("LoginPage",
                "loginPage",
                "~/LoginPage.aspx", true);


            // catch all route
            routes.MapPageRoute(
                "All Pages",
                "{*RequestedPage}",
                "~/ErrorPages/404.aspx",
                true,
                new System.Web.Routing.RouteValueDictionary { { "RequestedPage", "home" } }
                );
        }
    }
}
