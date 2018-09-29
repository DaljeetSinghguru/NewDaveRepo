using System;
using System.Data;
using System.Data.SqlClient;
using TaskAPI.BOL;

namespace TaskAPI.Models
{
    public class Shipping_Models
    {
        Connection objCon = new Connection();

        public bool UpdateShipmentHistory(string TransectionId, string CustId, string name, string price, string quantity, DateTime Date, string EmailAddress, string totalPrice,
                        string ItemType, string ItemId,string SKU)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("UpdateStockHistory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TransectionId", TransectionId);
            cmd.Parameters.AddWithValue("@CustId", CustId);
         
            cmd.Parameters.AddWithValue("@ItemName", name);
            cmd.Parameters.AddWithValue("@Price", price);
            cmd.Parameters.AddWithValue("@Quantity", quantity);
            cmd.Parameters.AddWithValue("@Date", DateTime.Now);
          
            cmd.Parameters.AddWithValue("@EmailAddress", EmailAddress);
            
            cmd.Parameters.AddWithValue("@ItemType", ItemType);
            cmd.Parameters.AddWithValue("@ItemID", ItemId);
            cmd.Parameters.AddWithValue("@SKU", SKU);
            try
            {
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
                //  return false;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                con.Dispose();
                cmd.Dispose();
            }
        }

        public string GetOrderNUmber(string TransectionId)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
           
            SqlCommand cmd = new SqlCommand("GetOrderNumber", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TransectionId", TransectionId);

            cmd.Parameters.Add("@Retrun", SqlDbType.NVarChar, 50).Value = "";
            cmd.Parameters["@Retrun"].Direction = ParameterDirection.Output;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = Convert.ToString(cmd.Parameters["@Retrun"].Value);
            return Return;
        }

    }
}