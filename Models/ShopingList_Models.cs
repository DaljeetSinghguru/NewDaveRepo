using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TaskAPI.Models
{
    public class ShopingList_Models
    {
        Connection objCon = new Connection();
        public DataTable PortalListing()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand command = new SqlCommand("Getlistofproducts", con);
            command.CommandType = CommandType.StoredProcedure;
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