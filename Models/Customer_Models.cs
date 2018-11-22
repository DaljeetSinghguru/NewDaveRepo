using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TaskAPI.BOL;

namespace TaskAPI.Models
{
    public class Customer_Models
    {
        Connection objCon = new Connection();
        public string Customer_Insert(Customer_Class obj)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Customer_Insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", obj.Name);
            cmd.Parameters.AddWithValue("@PhoneNumber", obj.PhoneNumber);
            cmd.Parameters.AddWithValue("@Email", obj.Email);
            cmd.Parameters.AddWithValue("@Password", obj.Password);
            cmd.Parameters.AddWithValue("@HouseNo", obj.HouseNo);
            cmd.Parameters.AddWithValue("@AddressLine2", obj.AddressLine2);
            cmd.Parameters.AddWithValue("@AddressLine3", obj.AddressLine3);
            cmd.Parameters.AddWithValue("@AddressLine4", obj.AddressLine4);
            cmd.Parameters.AddWithValue("@PostCode", obj.PostCode);
            cmd.Parameters.AddWithValue("@InvoiceName", obj.InvoiceName);
            cmd.Parameters.AddWithValue("@Company", obj.Company);
            cmd.Parameters.AddWithValue("@InvoiceAddessLine2", obj.InvoiceAddessLine2);
            cmd.Parameters.AddWithValue("@InvoiceAddressLine3", obj.InvoiceAddressLine3);
            cmd.Parameters.AddWithValue("@InvoiceAddressLine4", obj.InvoiceAddressLine4);
            cmd.Parameters.AddWithValue("@InvoicePostCode", obj.InvoicePostCode);
            cmd.Parameters.AddWithValue("@AgreeSendSpecialOffer", obj.AgreeSendSpecialOffer);
            cmd.Parameters.Add("@Return", SqlDbType.NVarChar, 50).Value = "";
            cmd.Parameters.Add("@ReturnCode", SqlDbType.NVarChar, 50).Value = "";
            cmd.Parameters["@Return"].Direction = ParameterDirection.Output;
            cmd.Parameters["@ReturnCode"].Direction = ParameterDirection.Output;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = Convert.ToString(cmd.Parameters["@Return"].Value);
            return Return;
        }


        public DataTable getordercustomerwise(string custid)
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("Getorderhistory", con);
            cmd.Parameters.Add("@custid", SqlDbType.NVarChar, 50).Value = custid;
            cmd.CommandType = CommandType.StoredProcedure;

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