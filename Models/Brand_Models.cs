﻿using System;
using System.Data;
using System.Data.SqlClient;
using TaskAPI.BOL;

namespace TaskAPI.Models
{
    public class Brand_Models
    {
        Connection objCon = new Connection();

        public DataTable BindbrandData()
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_GetBrandData", con);
            command.CommandType = CommandType.StoredProcedure;

            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
        public DataTable Brand_Find(string Active)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("Brand_Find", con);
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
        public string Brand_Insert(Brand_Class obj)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Brand_Insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BrandName", obj.BrandName);
            cmd.Parameters.AddWithValue("@SequenceNo", obj.SequenceNo);
            cmd.Parameters.AddWithValue("@Active", obj.Active);
            cmd.Parameters.Add("@Return", SqlDbType.NVarChar, 50).Value = "";
            cmd.Parameters["@Return"].Direction = ParameterDirection.Output;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = Convert.ToString(cmd.Parameters["@Return"].Value);
            return Return;
        }

        public string Brand_Update(Brand_Class obj)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Brand_Update", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BrandId", obj.BrandId);
            cmd.Parameters.AddWithValue("@BrandName", obj.BrandName);
            cmd.Parameters.AddWithValue("@SequenceNo", obj.SequenceNo);
            cmd.Parameters.AddWithValue("@Active", obj.Active);
            cmd.Parameters.Add("@Return", SqlDbType.NVarChar, 50).Value = "";
            cmd.Parameters["@Return"].Direction = ParameterDirection.Output;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = Convert.ToString(cmd.Parameters["@Return"].Value);
            return Return;
        }
        public string InsertBrandIntoDB(string filename, string ImageUrl, string Brand)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_UpdateBrandImage", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Brand", SqlDbType.VarChar).Value = Brand;
            command.Parameters.Add("@filename", SqlDbType.VarChar).Value = filename;
            command.Parameters.Add("@ImageUrl", SqlDbType.VarChar).Value = ImageUrl;

            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }
    }
}