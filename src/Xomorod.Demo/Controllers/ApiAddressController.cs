using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Xomorod.Demo.Controllers
{
    public class ApiAddressController : ApiController
    {
        /// <summary>
        /// Get controller api rout
        /// for e.g:
        /// GET api/apiaddress/?controller=products
        /// </summary>
        /// <param name="controller">api controller name</param>
        /// <returns>api real rout to call them</returns>
        [Route("api/ApiAddress")]
        public string Get(string controller)
        {
            string apiRout = "http://demo.xomorod.com";

#if DEBUG
            apiRout = "http://localhost:6654"; // local address
#endif

            // check the data has not slash '/' at end of address ?
            if (apiRout.EndsWith(@"/", StringComparison.InvariantCultureIgnoreCase))
                apiRout = apiRout.Substring(0, apiRout.Length - 1);

            return $"{apiRout}/api/{controller}";
        }


        /// <summary>
        /// Get controller api rout
        /// for e.g:
        /// GET api/apiaddress/?controller=products
        /// </summary>
        /// <param name="controller">api controller name</param>
        /// <returns>api real rout to call them</returns>
        [HttpPost]
        public string Post([FromBody]string controller)
        {
            return Get(controller);
        }
    }
}