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
            if (Active == null) { Active = ""; }
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
            cmd.Parameters.AddWithValue("@SearchKeyword", obj.SearchKeyword);
            cmd.Parameters.AddWithValue("@MetaDescription", obj.MetaDescription);
            //cmd.Parameters.AddWithValue("@SequenceNo", obj.SequenceNo);
            cmd.Parameters.AddWithValue("@Active", obj.Active);
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
            if (obj.Active == "True") { obj.Active = "1"; } else { obj.Active = "0"; }
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Category_Update", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CategoryId", obj.CategoryId);
            cmd.Parameters.AddWithValue("@CategoryName", obj.CategoryName);
            cmd.Parameters.AddWithValue("@SearchKeyword", obj.SearchKeyword);
            cmd.Parameters.AddWithValue("@MetaDescription", obj.MetaDescription);
            //cmd.Parameters.AddWithValue("@SequenceNo", obj.SequenceNo);
            cmd.Parameters.AddWithValue("@Active", obj.Active);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Data Update";
            return Return;
        }

        public string CategorySave(string filename, string filePath,string name,string ParentId,string ActiveOnPortal)
        {
            if (ActiveOnPortal == "true") { ActiveOnPortal = "1"; } else { ActiveOnPortal = "0"; }
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Category_SaveTree", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CategoryName", name);
            cmd.Parameters.AddWithValue("@ParentId", ParentId);
            cmd.Parameters.AddWithValue("@filename", filename);
            cmd.Parameters.AddWithValue("@filePath", filePath);
            cmd.Parameters.AddWithValue("@ActiveOnPortal", ActiveOnPortal);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Record Insert";
            return Return;
        }
        public string CategorySaveUpdate(string filename, string filePath, string name, string ParentId, string ActiveOnPortal)
        {
            if (ActiveOnPortal == "true") { ActiveOnPortal = "1"; } else { ActiveOnPortal = "0"; }
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Category_UpdateTree", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CategoryName", name);
            cmd.Parameters.AddWithValue("@ParentId", ParentId);
            cmd.Parameters.AddWithValue("@filename", filename);
            cmd.Parameters.AddWithValue("@filePath", filePath);
            cmd.Parameters.AddWithValue("@ActiveOnPortal", ActiveOnPortal);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Record Insert";
            return Return;
        }
        public string CategoryDelete(string Id)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Category_Delete", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Id);
            
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Record Deleted";
            return Return;
        }
        
        public DataTable GetCategorywithSubCategory()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("GetCategorywithSubCategory", con);
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

        public DataTable Category_Get()
        {
            
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("getCategoryforFirstPage", con);
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
        public DataTable GetItemByCategoryId(string CategoryId)
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_GetItemByCategoryId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CategoryId", CategoryId);

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

        public DataTable GetItemByCategory(string CategoryId)
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("Getitembycategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CategoryId", CategoryId);

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

        public DataTable GetHotSaleItem()
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("GetHotSaleItem", con);
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

        public DataTable GetRelatedItemByCategory(string ItemStockCode, string categoryid)
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("GetRelatedItemByItemStockCode", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ItemStockcode", ItemStockCode);
            //cmd.Parameters.AddWithValue("@categoryid", categoryid);
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

        public DataTable GetItemBySearchText(string text)
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_GetItemBysearchtext", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Searchtext", text);

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
        public DataTable GetItemByBrandId(string BrandId)
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("GetitembyBrandId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BrandId", BrandId);

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
        public string CategoryBannerImageUpdate(string filename, string filePath, string ParentId)
        {
           
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Category_UpdateBanner", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ParentId", ParentId);
            cmd.Parameters.AddWithValue("@BannerImage", filename);
            cmd.Parameters.AddWithValue("@BannnerfilePath", filePath);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Record Insert";
            return Return;
        }

        public DataTable GetItemDetailByStockCode(string StockCode)
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("GetItemDetailByStockCode", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ItemStockCode", StockCode);

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

        public string CategoryBannerImageUpdate870(string filename, string filePath, string ParentId)
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Category_UpdateBanner870", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ParentId", ParentId);
            cmd.Parameters.AddWithValue("@BannerImage", filename);
            cmd.Parameters.AddWithValue("@BannnerfilePath", filePath);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Record Insert";
            return Return;
        }
        public string CategoryBannerImageUpdate370(string filename, string filePath, string ParentId)
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Category_UpdateBanner370", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ParentId", ParentId);
            cmd.Parameters.AddWithValue("@BannerImage", filename);
            cmd.Parameters.AddWithValue("@BannnerfilePath", filePath);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Record Insert";
            return Return;
        }
        public string CategoryBannerImageUpdate570(string filename, string filePath, string ParentId)
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Category_UpdateBanner570", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ParentId", ParentId);
            cmd.Parameters.AddWithValue("@BannerImage", filename);
            cmd.Parameters.AddWithValue("@BannnerfilePath", filePath);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Record Insert";
            return Return;
        }
        public string CategoryBannerImageUpdate1920(string filename, string filePath, string ParentId)
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand cmd = new SqlCommand("Category_UpdateBanner1920", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ParentId", ParentId);
            cmd.Parameters.AddWithValue("@BannerImage", filename);
            cmd.Parameters.AddWithValue("@BannnerfilePath", filePath);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string Return = "Record Insert";
            return Return;
        }
        public DataTable Category_Get1920()
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("getCategoryfor1920", con);
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
        public DataTable Category_Get870()
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("getCategoryfor870", con);
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
        public DataTable Category_Get570()
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("getCategoryfor570", con);
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
        public DataTable Category_Get370()
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            con.Open();
            SqlCommand cmd = new SqlCommand("getCategoryfor370", con);
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