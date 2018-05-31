using System;
using System.IO;
using System.Web;
using System.Web.Http;
using System.Web.Routing;

namespace Xomorod.Demo
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);
            RouteConfig.RegisterRoutes(RouteTable.Routes); // Register Pages Routes

            Error += Application_Error;
        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

            // Get the exception object.
            Exception exc = Server.GetLastError();

            if (exc == null)
                return;

            // Handle HTTP errors
            if (exc.GetType() == typeof(HttpException))
            {
                // The Complete Error Handling Example generates
                // some errors using URLs with "NoCatch" in them;
                // ignore these here to simulate what would happen
                // if a global.asax handler were not implemented.
                if (exc.Message.Contains("NoCatch") || exc.Message.Contains("maxUrlLength"))
                    return;

                //Redirect HTTP errors to HttpError page
                //Server.Transfer("~/Views/Errors");
                Response.Redirect("~/ErrorPages/404.aspx");
                return;
            }

            //exc.RaiseError("Xomorod.co");

            // Clear the error from the server
            Server.ClearError();

            // Redirect to a landing page
            Response.Redirect("~/default.aspx");
        }
    }
}
