using System;
using System.Web.Services;

namespace Xomorod.Demo
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Redirect to main domain: xomorod.com

#if !DEBUG
            if (Request.Url.Host.ToLower() != "localhost" &&
                Request.Url.Host.ToLower() != "demo.xomorod.com")
            {
                Response.Redirect("http://demo.xomorod.com");
            }
#endif

            #endregion
        }

        [WebMethod]
        protected string GetQueryLanguage()
        {
            return Page.RouteData.Values["local"] as string;
        }
    }
}