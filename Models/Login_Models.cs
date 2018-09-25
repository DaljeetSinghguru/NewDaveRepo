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
        public DataTable check_logincustomer(Userlogin_Class obj)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("CheckLogincustomer", con);
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
        public string loginfirst_Insert(login_Class obj)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("loginFirstDetial_Insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", obj.FirstName);
            cmd.Parameters.AddWithValue("@Phone", obj.PhoneNumber);
            cmd.Parameters.AddWithValue("@Email", obj.email);
            cmd.Parameters.AddWithValue("@Password", obj.Password);

            cmd.Parameters.Add("@Return", SqlDbType.NVarChar, 50).Value = "";
            cmd.Parameters["@Return"].Direction = ParameterDirection.Output;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = Convert.ToString(cmd.Parameters["@Return"].Value);
            return Return;
        }
        public string loginSecond_Update(login_Class obj)
        {
            if (obj.wantnews == "True")
            {
                obj.wantnews = "1";
            }
            else
            {
                obj.wantnews = "0";
            };
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Customer_Insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", obj.FirstName);
            cmd.Parameters.AddWithValue("@phone", obj.phone);
            cmd.Parameters.AddWithValue("@email", obj.email);
            cmd.Parameters.AddWithValue("@HouseNo", obj.House);
            cmd.Parameters.AddWithValue("@AddressLine2", obj.AddressLine2);
            cmd.Parameters.AddWithValue("@AddressLine3", obj.AddressLine3);
            cmd.Parameters.AddWithValue("@AddressLine4", obj.AddressLine4);
            cmd.Parameters.AddWithValue("@PostCode", obj.PostCode);
            cmd.Parameters.AddWithValue("@InvoicePostCode", obj.InvoicePostCode);
            cmd.Parameters.AddWithValue("@InvoiceCompany", obj.InvoiceCompany);
            cmd.Parameters.AddWithValue("@InvoiceHouse", obj.InvoiceHouse);
            cmd.Parameters.AddWithValue("@InvoiceAddressLine2", obj.InvoiceAddressLine2);
            cmd.Parameters.AddWithValue("@InvoiceAddressLine3", obj.InvoiceAddressLine3);
            cmd.Parameters.AddWithValue("@InvoiceAddressLine4", obj.InvoiceAddressLine4);
            cmd.Parameters.AddWithValue("@wantnews", obj.wantnews );

            
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