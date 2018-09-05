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

        public string InsertItemIntoDB(
            //string filename1, string filename2, string filename3, string filename4, string filename5, string filename6, string filepathname1, string filepathname2, string filepathname3,
            // string filepathname4, string filepathname5, string filepathname6,
                string ItemName, string BrandId,  string Description, string ItemStockCode, string Price, string Title, string StockInHand,
                string VAT,string SearchKeyword, string MetaDescription,string Active)
        {
            string msg = "";
            if (Active == "true") {Active = "1"; } else { Active = "0"; }
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_InsertUpdateItemData", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@title", Title);
            command.Parameters.AddWithValue("@name", ItemName);
            
            command.Parameters.AddWithValue("@BrandId", BrandId);
            command.Parameters.AddWithValue("@ItemStockCode", ItemStockCode);
            command.Parameters.AddWithValue("@Description", Description);
            //command.Parameters.AddWithValue("@ItemMainImage", filename1);
            //command.Parameters.AddWithValue("@ItemImage1", filename2);
            //command.Parameters.AddWithValue("@ItemImage2", filename3);
            //command.Parameters.AddWithValue("@ItemImage4", filename4);
            //command.Parameters.AddWithValue("@ItemImage5", filename5);
            //command.Parameters.AddWithValue("@ItemImage6", filename6);
            command.Parameters.AddWithValue("@Price", Price);
            //command.Parameters.AddWithValue("@ItemMainImageUrl", filepathname1);
            //command.Parameters.AddWithValue("@ItemMainImageUrl1", filepathname2);
            //command.Parameters.AddWithValue("@ItemMainImageUrl2", filepathname3);
            //command.Parameters.AddWithValue("@ItemMainImageUrl4", filepathname4);
            //command.Parameters.AddWithValue("@ItemMainImageUrl5", filepathname5);
            //command.Parameters.AddWithValue("@ItemMainImageUrl6", filepathname6);

            command.Parameters.AddWithValue("@StockInHand", StockInHand);
            command.Parameters.AddWithValue("@VAT", VAT);
            command.Parameters.AddWithValue("@SearchKeyword", SearchKeyword);
            command.Parameters.AddWithValue("@MetaDescription", MetaDescription);
            command.Parameters.AddWithValue("@Active", Active);

            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }
        public string UpdateItemIntoDB(string ItemName,  string BrandId,  string Description, string ItemStockCode, string Price, string Title, string StockInHand, string ItemId,string VAT,string SearchKeyword,string MetaDescription,string Active)
        {
            string msg = "";
            if (Active == "true") { Active = "1"; } else { Active = "0"; }

            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_UpdateItemData", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@title", Title);
            command.Parameters.AddWithValue("@name", ItemName);
          
            command.Parameters.AddWithValue("@BrandId", BrandId);
            command.Parameters.AddWithValue("@ItemStockCode", ItemStockCode);
            command.Parameters.AddWithValue("@Description", Description);
            command.Parameters.AddWithValue("@Price", Price);
            command.Parameters.AddWithValue("@StockInHand", StockInHand);
            command.Parameters.AddWithValue("@ItemId", ItemId);
            command.Parameters.AddWithValue("@VAT", VAT);
            command.Parameters.AddWithValue("@SearchKeyword", SearchKeyword);
            command.Parameters.AddWithValue("@MetaDescription", MetaDescription);
            command.Parameters.AddWithValue("@Active", Active);

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

        public string UpdateImageFile4IntoDB(string filename4, string filepathname4, string ItemId)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_UpdateItemImageData4", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@ItemImage3", filename4);
            command.Parameters.AddWithValue("@ItemMainImageUrl3", filepathname4);
            command.Parameters.AddWithValue("@ItemId", ItemId);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }

        public string UpdateImageFile5IntoDB(string filename5, string filepathname5, string ItemId)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_UpdateItemImageData5", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@ItemImage4", filename5);
            command.Parameters.AddWithValue("@ItemMainImageUrl4", filepathname5);
            command.Parameters.AddWithValue("@ItemId", ItemId);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }

        public string UpdateImageFile6IntoDB(string filename6, string filepathname6, string ItemId)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_UpdateItemImageData6", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@ItemImage5", filename6);
            command.Parameters.AddWithValue("@ItemMainImageUrl5", filepathname6);
            command.Parameters.AddWithValue("@ItemId", ItemId);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }

        public DataTable GetAllItemStockCode()
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_GetAllItemStockCode", con);
            command.CommandType = CommandType.StoredProcedure;

            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        
        public string Insert_selectedAccessories(string a, string b)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Insert_selectedAccessories", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ItemStockCode", a);
            cmd.Parameters.AddWithValue("@ItemStockCodeaccessories", b);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Record Insert";
            return Return;
        }
        public string Insert_selectedRelatedItems(string a, string b)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Insert_selectedRelatedItems", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ItemStockCode", a);
            cmd.Parameters.AddWithValue("@ItemStockCodeaccessories", b);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Record Insert";
            return Return;
        }
        public string LinkCategorywithSelectedItem(string a, string b)
        {
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("UpdateItemwithCategoryId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ItemStockCode", a);
            cmd.Parameters.AddWithValue("@CategoryId", b);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Item Link with Selected Category Done.";
            return Return;
        }


        
        public string Item_Insert(Item_Class obj)
        {
            string msg = "";
            if (obj.Active == "True") { obj.Active = "1"; } else { obj.Active = "0"; }
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_InsertUpdateItemData", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@title", obj.Title);
            command.Parameters.AddWithValue("@name", obj.Name);
            command.Parameters.AddWithValue("@BrandId", obj.BrandId);
            command.Parameters.AddWithValue("@ItemStockCode", obj.ItemStockCode);
            command.Parameters.AddWithValue("@Description", obj.Description);
            command.Parameters.AddWithValue("@Price", obj.Price);
            command.Parameters.AddWithValue("@StockInHand", obj.StockInHand);
            command.Parameters.AddWithValue("@VAT", obj.Vat);
            command.Parameters.AddWithValue("@SearchKeyword", obj.SearchKeyword);
            command.Parameters.AddWithValue("@MetaDescription", obj.MetaDescription);
            command.Parameters.AddWithValue("@Active", obj.Active);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            return msg;
        }

        public string Item_Update(Item_Class obj)
        {
            string msg = "";
            if (obj.Active == "True") { obj.Active = "1"; } else { obj.Active = "0"; }

            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_UpdateItemData", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@title", obj.Title);
            command.Parameters.AddWithValue("@name", obj.Name);

            command.Parameters.AddWithValue("@BrandId", obj.BrandId);
            command.Parameters.AddWithValue("@ItemStockCode", obj.ItemStockCode);
            command.Parameters.AddWithValue("@Description", obj.Description);
            command.Parameters.AddWithValue("@Price", obj.Price);
            command.Parameters.AddWithValue("@StockInHand", obj.StockInHand);
            command.Parameters.AddWithValue("@ItemId", obj.ItemId);
            command.Parameters.AddWithValue("@VAT", obj.Vat);
            command.Parameters.AddWithValue("@SearchKeyword", obj.SearchKeyword);
            command.Parameters.AddWithValue("@MetaDescription", obj.MetaDescription);
            command.Parameters.AddWithValue("@Active", obj.Active);

            con.Open();
            command.ExecuteNonQuery();
            con.Close();

            return msg;
        }
    }
}