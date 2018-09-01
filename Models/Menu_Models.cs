using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TaskAPI.Models
{
    public class Menu_Models
    {
        Connection objCon = new Connection();
        public DataTable GetMenu()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand command = new SqlCommand("GetMenu", con);
            command.CommandType = CommandType.StoredProcedure;
            //command.Parameters.Add("@Course", SqlDbType.VarChar).Value = Course;
            try
            {
                SqlDataReader dr = command.ExecuteReader();
                dt.Load(dr);
            }
            catch { };
            con.Close();
            return dt;
        }
    }
}