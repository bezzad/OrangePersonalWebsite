using System.Globalization;

namespace Xomorod.Demo.Core
{
    public static class ResourceHelper
    {
        internal static System.Resources.ResourceSet GetResourceController(string name, string lang)
        {
            switch (name.ToLower())
            {
                case "login": return Resources.login_Localization.ResourceManager.GetResourceSet(new CultureInfo(lang), true, true);
                default: return Resources.localization.ResourceManager.GetResourceSet(new CultureInfo(lang), true, true);
            }
        }
    }
}
