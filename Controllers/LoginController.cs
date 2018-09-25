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
            string Return = "";
            DataTable dt = objModels.check_logincustomer(login);

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
    }
}
