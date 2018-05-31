using System.Web.Services;

namespace Xomorod.Demo.Core
{
    public static class CdnHelper
    {
        [WebMethod]
        public static string GetCdn(string lib, int backTrackPathCount = 0)
        {
            string path = "";

            if (Resources.cdn_changer.ResourceManager.GetString(lib) == "cdn")
            {
                path = Resources.cdn_Resources.ResourceManager.GetString(lib);
            }
            else
            {
                // else: local loaded
                while (backTrackPathCount-- > 0)
                {
                    path += @"../";
                }

                path += Resources.local_Resources.ResourceManager.GetString(lib);
            }

            return path;
        }
    }

}
