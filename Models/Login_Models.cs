using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TaskAPI.BOL;

namespace TaskAPI.Models
{
    public class Login_Models
    {
        Connection objCon = new Connection();
        public DataTable check_login(Userlogin_Class obj)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("CheckLogin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", obj.Name);
            cmd.Parameters.AddWithValue("@Password", obj.Password);

            try
            {
                dt.Load(cmd.ExecuteReader());
            }
            catch (Exception ex)
            {
                throw ex;
            }
            cmd.Dispose();
            con.Close();
            return dt;
        }
    }
}