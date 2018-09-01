using System;
using System.Data;
using System.Data.SqlClient;
using TaskAPI.BOL;

namespace TaskAPI.Models
{
    public class Item_Models
    {
        Connection objCon = new Connection();

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

        public string InsertItemIntoDB(string filename1, string filename2, string filename3, string filepathname1, string filepathname2, string filepathname3,
                string ItemName, string CategoryId, string BrandId, string SubCategoryId, string Description, string ItemStockCode, string Price, string Title, string StockInHand,string VAT)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_InsertUpdateItemData", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@title", Title);
            command.Parameters.AddWithValue("@name", ItemName);
            command.Parameters.AddWithValue("@SubCategoryId", SubCategoryId);
            command.Parameters.AddWithValue("@BrandId", BrandId);
            command.Parameters.AddWithValue("@ItemStockCode", ItemStockCode);
            command.Parameters.AddWithValue("@Description", Description);
            command.Parameters.AddWithValue("@ItemMainImage", filename1);
            command.Parameters.AddWithValue("@ItemImage1", filename2);
            command.Parameters.AddWithValue("@ItemImage2", filename3);
            command.Parameters.AddWithValue("@Price", Price);
            command.Parameters.AddWithValue("@ItemMainImageUrl", filepathname1);
            command.Parameters.AddWithValue("@ItemMainImageUrl1", filepathname2);
            command.Parameters.AddWithValue("@ItemMainImageUrl2", filepathname3);
            command.Parameters.AddWithValue("@StockInHand", StockInHand);
            command.Parameters.AddWithValue("@VAT", VAT);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }
        public string UpdateItemIntoDB(string ItemName, string CategoryId, string BrandId, string SubCategoryId, string Description, string ItemStockCode, string Price, string Title, string StockInHand, string ItemId,string VAT)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_UpdateItemData", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@title", Title);
            command.Parameters.AddWithValue("@name", ItemName);
            command.Parameters.AddWithValue("@SubCategoryId", SubCategoryId);
            command.Parameters.AddWithValue("@BrandId", BrandId);
            command.Parameters.AddWithValue("@ItemStockCode", ItemStockCode);
            command.Parameters.AddWithValue("@Description", Description);
            command.Parameters.AddWithValue("@Price", Price);
            command.Parameters.AddWithValue("@StockInHand", StockInHand);
            command.Parameters.AddWithValue("@ItemId", ItemId);
            command.Parameters.AddWithValue("@VAT", VAT);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }
        public string UpdateImageFile1IntoDB(string filename1, string filepathname1, string ItemId)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_UpdateItemImageData1", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@ItemMainImage", filename1);
            command.Parameters.AddWithValue("@ItemMainImageUrl", filepathname1);
            command.Parameters.AddWithValue("@ItemId", ItemId);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }
        public string UpdateImageFile2IntoDB(string filename2, string filepathname2, string ItemId)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_UpdateItemImageData2", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@ItemImage1", filename2);
            command.Parameters.AddWithValue("@ItemMainImageUrl1", filepathname2);
            command.Parameters.AddWithValue("@ItemId", ItemId);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }
        public string UpdateImageFile3IntoDB(string filename3, string filepathname3, string ItemId)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_UpdateItemImageData3", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@ItemImage2", filename3);
            command.Parameters.AddWithValue("@ItemMainImageUrl2", filepathname3);
            command.Parameters.AddWithValue("@ItemId", ItemId);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }
        public DataTable BindItemGridData()
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_GetItemGridData", con);
            command.CommandType = CommandType.StoredProcedure;

            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
    }
}