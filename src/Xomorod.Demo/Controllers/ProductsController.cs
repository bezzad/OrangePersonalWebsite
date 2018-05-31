using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Script.Serialization;
using Newtonsoft.Json;

namespace Xomorod.Demo.Controllers
{
    /// <summary>
    /// Xomorod Products Controller
    /// </summary>
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class ProductsController : ApiController
    {
        /// <summary>
        /// Get all products by default language (en)
        /// </summary>
        /// <returns>list of portfolios</returns>
        [System.Web.Http.Route("api/Products")]
        public IHttpActionResult Get()
        {
             var json = File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + "App_Data/products.json");
            var objs = JsonConvert.DeserializeObject<IEnumerable<dynamic>>(json);
            return Ok(objs);
        }
    }
}