using System.Collections;
using System.Collections.Generic;
using System.Web.Http;
using Newtonsoft.Json.Linq;
using Xomorod.Demo.Core;

namespace Xomorod.Demo.Controllers
{
    public class TranslateController : ApiController
    {
        protected static Dictionary<string, JObject> Localizations;

        static TranslateController()
        {
            Localizations = new Dictionary<string, JObject>();
        }

        // GET domain/api/translate/
        public IHttpActionResult Get()
        {
            return Get("default", "en");
        }

        // GET domain/api/translate?lang=en
        public IHttpActionResult Get(string lang)
        {
            return Get("default", lang);
        }

        // GET domain/api/translate/[pageName]/?lang=en
        public IHttpActionResult Get(string pageName, string lang)
        {
            string key = pageName + lang;
            if (Localizations.ContainsKey(key))
            {
                return Ok(Localizations[key]);
            }

            var resourceObject = new JObject();

            var resourceSet = ResourceHelper.GetResourceController(pageName, lang);
            IDictionaryEnumerator enumerator = resourceSet.GetEnumerator();
            while (enumerator.MoveNext())
            {
                resourceObject.Add(enumerator.Key.ToString(), enumerator.Value.ToString());
            }

            Localizations[key] = resourceObject;

            return Ok(resourceObject);
        }
    }
}