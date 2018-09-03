using System;
using System.Data;
using System.Data.SqlClient;
using TaskAPI.BOL;

namespace TaskAPI.Models
{
    public class SubCategory_Models
    {
        Connection objCon = new Connection();

        public DataTable SubCategory_Find(string Active)
        {
            if (Active == null) { Active = ""; }
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("SubCategory_Find", con);
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
        public string SubCategory_Insert(SubCategory_Class obj)
        {
            if (obj.Active == "True") { obj.Active = "1"; } else { obj.Active = "0"; }

            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("SubCategory_Insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SubCategoryName", obj.SubCategoryDescription);
            cmd.Parameters.AddWithValue("@CategoryId", obj.Category);
            cmd.Parameters.AddWithValue("@MetaDescription", obj.MetaDescription);
            cmd.Parameters.AddWithValue("@SearchKeyword", obj.SearchKeyword);
            cmd.Parameters.AddWithValue("@Active", obj.Active);


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Data Insert";
            return Return;
        }
        public string SubCategory_Update(SubCategory_Class obj)
        {
            if (obj.Active == "True") { obj.Active = "1"; } else { obj.Active = "0"; }

            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("SubCategory_Update", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SubCategoryId", obj.SubCategoryId);
            cmd.Parameters.AddWithValue("@SubCategoryName", obj.SubCategoryDescription);
            cmd.Parameters.AddWithValue("@CategoryId", obj.CategoryId);
            cmd.Parameters.AddWithValue("@MetaDescription", obj.MetaDescription);
            cmd.Parameters.AddWithValue("@SearchKeyword", obj.SearchKeyword);
            cmd.Parameters.AddWithValue("@Active", obj.Active);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Data Update";
            return Return;
        }

        public DataTable BindSubCategoryData()
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("SubCategory_Find1", con);
            command.CommandType = CommandType.StoredProcedure;

            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
        public DataTable BindSubCategoryDatabasedonCategory(string Id)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("SubCategory_FindbasedonCategoryId", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@CategoryId", Id);
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
    }
}