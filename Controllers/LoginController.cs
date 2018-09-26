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
    public class LoginController : ApiController
    {
        Login_Models objModels = new Login_Models();

        [HttpPost]
        public string checkLogin(Userlogin_Class login)
        {
            string Return = "";
            DataTable dt = objModels.check_login(login);

            if ((dt.Rows[0][0]).ToString() != "0")
            {
                Return = "login successfully";
            }
            else
            {
                Return = "not login";
            }
            return Return;
        }


        [HttpPost]
        public string checkLogincustomer(Userlogin_Class login)
        {
            
            string userId = objModels.check_logincustomer(login);

            return userId;
        }


        [HttpPost]
        public string Loginfirst_Insert(login_Class obj)
        {
            string Return = objModels.loginfirst_Insert(obj);
            return Return;
        }

        [HttpPost]
        public string Loginsecond_Update(login_Class obj)
        {
            string Return = objModels.loginSecond_Update(obj);
            return Return;
        }


        [HttpPost]
        public IEnumerable<Customer_Class> GetCustomer_Find(string Id)
        {
            List<Customer_Class> list = new List<Customer_Class>();

            DataTable dt = objModels.Customer_Find(Id);

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Customer_Class()
                    {
                        AddressLine2 = Convert.ToString(dr["AddressLine2"]),
                        AddressLine3 = Convert.ToString(dr["AddressLine3"]),
                        AddressLine4 = Convert.ToString(dr["AddressLine4"]),
                        AgreeSendSpecialOffer = Convert.ToString(dr["AgreeSendSpecialOffer"]),
                        Company = Convert.ToString(dr["Company"]),
                        Email = Convert.ToString(dr["Email"]),
                        HouseNo = Convert.ToString(dr["HouseNo"]),
                        InvoiceAddessLine2 = Convert.ToString(dr["InvoiceAddessLine2"]),
                         InvoiceAddressLine3= Convert.ToString(dr["InvoiceAddressLine3"]),
                        InvoiceAddressLine4 = Convert.ToString(dr["InvoiceAddressLine4"]),
                        InvoiceName = Convert.ToString(dr["InvoiceName"]),
                        InvoicePostCode = Convert.ToString(dr["InvoicePostCode"]),
                        Name = Convert.ToString(dr["Name"]),
                        Password = Convert.ToString(dr["Password"]),
                        PhoneNumber = Convert.ToString(dr["PhoneNumber"]),
                        PostCode = Convert.ToString(dr["PostCode"])
                    });
                }
            }
            return list;
        }

    }
}
