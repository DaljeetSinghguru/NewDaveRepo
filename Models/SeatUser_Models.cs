using System;
using System.Data;
using System.Data.SqlClient;
using TaskAPI.BOL;
using Slimapi.Models;
namespace TaskAPI.Models
{
    public class SeatUser_Models
    {
        Connection objCon = new Connection();

        public DataTable SeatUser_Find(string SeatUserId)
        {
            DataTable dt = new DataTable();
              SqlConnection con = new SqlConnection(new login().GetConnectionString());
            con.Open();
            SqlCommand cmd = new SqlCommand("SeatUser_Find", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SeatUserId", SeatUserId);
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

        public string SeatUser_Update(SeatUser_Class obj)
        {
              SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand cmd = new SqlCommand("SeatUser_Update", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SeatUserId", obj.SeatUserId);
            cmd.Parameters.AddWithValue("@UserId", obj.UserId);
            cmd.Parameters.AddWithValue("@SeatId", obj.SeatId);
            cmd.Parameters.AddWithValue("@Active", obj.Active);
            cmd.Parameters.AddWithValue("@ActiveStartDate", Convert.ToDateTime(obj.ActiveStartDate));
            cmd.Parameters.AddWithValue("@ActiveEndDate", Convert.ToDateTime(obj.ActiveEndDate));
            cmd.Parameters.AddWithValue("@SequenceNo", obj.SequenceNo);
            cmd.Parameters.AddWithValue("@IPAddress", obj.IPAddress);
            cmd.Parameters.AddWithValue("@LoginUserId", obj.LoginUserId);
            cmd.Parameters.Add("@Return", SqlDbType.NVarChar, 50).Value = "";
            cmd.Parameters["@Return"].Direction = ParameterDirection.Output;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = Convert.ToString(cmd.Parameters["@Return"].Value);
            return Return;
        }
    }
}