using System;
using System.Data;
using System.Data.SqlClient;
using TaskAPI.BOL;

namespace TaskAPI.Models
{
    public class Blog_Models
    {
        Connection objCon = new Connection();


        public string insertblogwithImageIntoDB(string filename1, string filepathname1, string Id)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_insertblogImage", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@BlogImage", filename1);
            command.Parameters.AddWithValue("@BlogImageUrl", filepathname1);
            command.Parameters.AddWithValue("@Id", Id);
           
            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }
        
        public int Blog_Insert(Blog_Class obj)
        {
           
           
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_insertblog", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Header", obj.Header);
            command.Parameters.AddWithValue("@Description", obj.Description);
            command.Parameters.AddWithValue("@CreatedBy", obj.CreatedBy);
            con.Open();
            int iNewRowIdentity = Convert.ToInt32(command.ExecuteScalar());
            con.Close();
            return iNewRowIdentity;
        }

        public DataTable BindBlogData()
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_GetAllBlogData", con);
            command.CommandType = CommandType.StoredProcedure;

            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
        public DataTable GetSingleBlogData( string Id)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_GetsingleBlogData", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@BlogId", Id);
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public string Blog_InsertSendComment(SendComment_Class obj)
        {

            string aa = "";
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_insertblogcomment", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Name", obj.Name);
            command.Parameters.AddWithValue("@Comment", obj.Comment);
            command.Parameters.AddWithValue("@Email", obj.Email);
            command.Parameters.AddWithValue("@Website", obj.Website);
            command.Parameters.AddWithValue("@blogid", obj.blogid);
            command.Parameters.AddWithValue("@Subject", obj.Subject);
            command.Parameters.AddWithValue("@useremailid", obj.useremailid);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            return aa;
        }
        //

        public DataTable getcommentdetailuserwise(string blogId)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_getcommentdetailuserwise", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@blogid", blogId);
           
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
     
    }
}