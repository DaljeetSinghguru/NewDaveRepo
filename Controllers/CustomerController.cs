using System;
using System.Collections.Generic;
using System.Data;
using System.Web.Http;
using System.Web.Http.Cors;
using TaskAPI.BOL;
using TaskAPI.Models;

namespace TaskAPI.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class CustomerController : ApiController
    {
        Customer_Models objModels = new Customer_Models();

        [HttpPost]
        public string Customer_Insert(Customer_Class obj)
        {
            string Return = objModels.Customer_Insert(obj);
            return Return;
        }

    }
}
