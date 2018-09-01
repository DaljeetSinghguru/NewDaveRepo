using System;
using System.Data;
using System.Data.SqlClient;
using TaskAPI.BOL;

namespace TaskAPI.Models
{
    public class Category_Models
    {
        Connection objCon = new Connection();

        public DataTable Category_Find(string Active)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("Category_Find", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Active", Active);
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
        public string Category_Insert(Category_Class obj)
        {
            if (obj.Active == "True") { obj.Active = "1"; } else { obj.Active = "0"; }
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Category_Insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CategoryName", obj.CategoryName);
            //cmd.Parameters.AddWithValue("@SequenceNo", obj.SequenceNo);
            //cmd.Parameters.AddWithValue("@Active", obj.Active);
          //  cmd.Parameters.Add("@Return", SqlDbType.Int).Value = "";
          //  cmd.Parameters["@Return"].Direction = ParameterDirection.Output;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Record Insert";
            return Return;
        }
        public string Category_Update(Category_Class obj)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Category_Update", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CategoryId", obj.CategoryId);
            cmd.Parameters.AddWithValue("@CategoryName", obj.CategoryName);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Data Update";
            return Return;
        }
    }
}