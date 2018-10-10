using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;
using TaskAPI.BOL;
using TaskAPI.Models;

namespace TaskAPI.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class CategoryController : ApiController
    {
        Category_Models objModels = new Category_Models();

        [HttpPost]
        public IEnumerable<Category_Class> Category_Find(string Active)
        {
            List<Category_Class> list = new List<Category_Class>();

            DataTable dt = objModels.Category_Find(Active);

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Category_Class()
                    {
                        RowId = Convert.ToString(dr["RowId"]),
                        CategoryId = Convert.ToInt32(dr["CategoryId"]),
                        CategoryName = Convert.ToString(dr["CategoryName"]),
                        IsParentId = Convert.ToString(dr["IsParentId"]),
                    });
                }
            }
            return list;
        }

        [HttpPost]
        public string Category_Insert(Category_Class obj)
        {
            string Return = objModels.Category_Insert(obj);
            return Return;
        }

        [HttpPost]
        public string Category_Update(Category_Class obj)
        {
            string Return = objModels.Category_Update(obj);
            return Return;
        }

        //[HttpPost]
        //public string SaveCategory(string name,string ParentId)
        //{
        //    string Return = objModels.CategorySave(name, ParentId);
        //    return Return;
        //}
        [HttpPost]

        public HttpResponseMessage SaveCategory()
        {
            string[] filename = new string[10];
            string[] filepathname = new string[10];
            int i = 0;
            HttpResponseMessage result = null;
            var httpRequest = HttpContext.Current.Request;
            if (httpRequest.Files.Count > 0)
            {
                var docfiles = new List<string>();
                foreach (string file in httpRequest.Files)
                {
                    var postedFile = httpRequest.Files[file];
                    var filenameWithHrUserId = httpRequest.Form.Get(0) + '_' + postedFile.FileName;

                    var filePath = AppDomain.CurrentDomain.BaseDirectory + @"Images\" + filenameWithHrUserId;
                    //string filePath = HttpContext.Current.Server.MapPath("/StudentImage/") + filenameWithHrUserId;
                    //string filePath = Path.GetFullPath(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.InternetCache), postedFile.FileName));
                    postedFile.SaveAs(filePath);

                    docfiles.Add(filePath);
                    filename[i] = Convert.ToString(filenameWithHrUserId);
                    filepathname[i] = Convert.ToString(filePath);
                    i = i + 1;

                }
                result = Request.CreateResponse(HttpStatusCode.Created, docfiles);
                var CategoryName = httpRequest.Form.Get(0);
                var IsParentMenuId = httpRequest.Form.Get(1);
                var ActiveOnPortal = httpRequest.Form.Get(2);
                string msg = "";

                msg = new Category_Models().CategorySave(filename[0], filepathname[0], CategoryName, IsParentMenuId, ActiveOnPortal);

                if (msg != "")
                {
                    result = Request.CreateResponse(JsonConvert.SerializeObject(msg));
                }
                //return data;
            }
            else
            {
                result = Request.CreateResponse(HttpStatusCode.BadRequest);
            }
            return result;
        }

        [HttpPost]

        public HttpResponseMessage SaveUpdateCategory()
        {
            string[] filename = new string[10];
            string[] filepathname = new string[10];
            int i = 0;
            HttpResponseMessage result = null;
            var httpRequest = HttpContext.Current.Request;
            if (httpRequest.Files.Count > 0)
            {
                var docfiles = new List<string>();
                foreach (string file in httpRequest.Files)
                {
                    var postedFile = httpRequest.Files[file];
                    var filenameWithHrUserId = httpRequest.Form.Get(0) + '_' + postedFile.FileName;

                    var filePath = AppDomain.CurrentDomain.BaseDirectory + @"Images\" + filenameWithHrUserId;
                    //string filePath = HttpContext.Current.Server.MapPath("/StudentImage/") + filenameWithHrUserId;
                    //string filePath = Path.GetFullPath(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.InternetCache), postedFile.FileName));
                    postedFile.SaveAs(filePath);

                    docfiles.Add(filePath);
                    filename[i] = Convert.ToString(filenameWithHrUserId);
                    filepathname[i] = Convert.ToString(filePath);
                    i = i + 1;

                }
                result = Request.CreateResponse(HttpStatusCode.Created, docfiles);
                var CategoryName = httpRequest.Form.Get(0);
                var IsParentMenuId = httpRequest.Form.Get(1);
                var ActiveOnPortal = httpRequest.Form.Get(2);
                string msg = "";

                msg = new Category_Models().CategorySaveUpdate(filename[0], filepathname[0], filename[1], filepathname[1], CategoryName, IsParentMenuId, ActiveOnPortal);

                if (msg != "")
                {
                    result = Request.CreateResponse(JsonConvert.SerializeObject(msg));
                }
                //return data;
            }
            else
            {
                result = Request.CreateResponse(HttpStatusCode.BadRequest);
            }
            return result;
        }
        [HttpPost]
        public string DeleteCategory(string Id)
        {
            string Return = objModels.CategoryDelete(Id);
            return Return;
        }


        [HttpGet]
        public IEnumerable<Category_Class> Category_Get()
        {
            List<Category_Class> list = new List<Category_Class>();
            DataTable dt = objModels.Category_Get();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Category_Class()
                    {
                        CategoryId = Convert.ToInt32(dr["CategoryId"]),
                        CategoryName = Convert.ToString(dr["CategoryName"]),
                        IsParentId = Convert.ToString(dr["IsParentId"]),
                        filename = Convert.ToString(dr["filename"]),
                        filePath = Convert.ToString(dr["filePath"]),
                        ActiveOnPortal = Convert.ToString(dr["ActiveOnPortal"]),
                        ParentName = Convert.ToString(dr["ParentName"]),
                    });
                }
            }
            return list;
        }

        [HttpGet]
        public IEnumerable<Item_Class> GetItemByCategoryId(string CategoryId)
        {
            List<Item_Class> list = new List<Item_Class>();
            DataTable dt = objModels.GetItemByCategoryId(CategoryId);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Item_Class()
                    {
                        CategoryId = Convert.ToString(dr["CategoryId"]),
                        CategoryName = Convert.ToString(dr["CategoryName"]),
                        Active = Convert.ToString(dr["Active"]),
                        ASIN = Convert.ToString(dr["ASIN"]),
                        BrandId = Convert.ToString(dr["BrandId"]),
                        BrandName = Convert.ToString(dr["BrandName"]),
                        Description = Convert.ToString(dr["Description"]),
                        ItemId = Convert.ToString(dr["ItemId"]),
                        ItemImage1 = Convert.ToString(dr["ItemImage1"]),
                        ItemImage3 = Convert.ToString(dr["ItemImage3"]),
                        ItemImage4 = Convert.ToString(dr["ItemImage4"]),
                        ItemImage5 = Convert.ToString(dr["ItemImage5"]),

                        ItemImage2 = Convert.ToString(dr["ItemImage2"]),
                        ItemMainImage = Convert.ToString(dr["ItemMainImage"]),
                        ItemMainImageUrl = Convert.ToString(dr["ItemMainImageUrl"]),
                        ItemMainImageUrl1 = Convert.ToString(dr["ItemMainImageUrl1"]),
                        ItemMainImageUrl3 = Convert.ToString(dr["ItemMainImageUrl3"]),
                        ItemMainImageUrl4 = Convert.ToString(dr["ItemMainImageUrl4"]),
                        ItemMainImageUrl5 = Convert.ToString(dr["ItemMainImageUrl5"]),

                        ItemMainImageUrl2 = Convert.ToString(dr["ItemMainImageUrl2"]),
                        ItemStockCode = Convert.ToString(dr["ItemStockCode"]),
                        MetaDescription = Convert.ToString(dr["MetaDescription"]),
                        Name = Convert.ToString(dr["Name"]),
                        Price = Convert.ToString(dr["Price"]),
                        SearchKeyword = Convert.ToString(dr["SearchKeyword"]),
                        SKU = Convert.ToString(dr["SKU"]),
                        StockInHand = Convert.ToString(dr["StockInHand"]),
                        Title = Convert.ToString(dr["Title"]),
                        Vat = Convert.ToString(dr["Vat"]),
                    });
                }
            }
            return list;
        }

        [HttpGet]
        public IEnumerable<Item_Class> GetItemByCategory(String CategoryId)
        {
            List<Item_Class> list = new List<Item_Class>();
            DataTable dt = objModels.GetItemByCategory(CategoryId);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Item_Class()
                    {
                        CategoryId = Convert.ToString(dr["CategoryId"]),
                        CategoryName = Convert.ToString(dr["CategoryName"]),
                        Active = Convert.ToString(dr["Active"]),
                        ASIN = Convert.ToString(dr["ASIN"]),
                        BrandId = Convert.ToString(dr["BrandId"]),
                        BrandName = Convert.ToString(dr["BrandName"]),
                        Description = Convert.ToString(dr["Description"]),
                        ItemId = Convert.ToString(dr["ItemId"]),
                        ItemImage1 = Convert.ToString(dr["ItemImage1"]),
                        ItemImage2 = Convert.ToString(dr["ItemImage2"]),
                        ItemMainImage = Convert.ToString(dr["ItemMainImage"]),
                        ItemMainImageUrl = Convert.ToString(dr["ItemMainImageUrl"]),
                        ItemMainImageUrl1 = Convert.ToString(dr["ItemMainImageUrl1"]),
                        ItemMainImageUrl2 = Convert.ToString(dr["ItemMainImageUrl2"]),
                        ItemStockCode = Convert.ToString(dr["ItemStockCode"]),
                        MetaDescription = Convert.ToString(dr["MetaDescription"]),
                        Name = Convert.ToString(dr["Name"]),
                        Price = Convert.ToString(dr["Price"]),
                        SearchKeyword = Convert.ToString(dr["SearchKeyword"]),
                        SKU = Convert.ToString(dr["SKU"]),
                        StockInHand = Convert.ToString(dr["StockInHand"]),
                        Title = Convert.ToString(dr["Title"]),
                        Vat = Convert.ToString(dr["Vat"]),
                    });
                }
            }
            return list;
        }

        [HttpGet]
        public IEnumerable<Item_Class> GetRelatedItems(string ItemStockCode, string categoryid)
        {
            List<Item_Class> list = new List<Item_Class>();
            DataTable dt = objModels.GetRelatedItemByCategory(ItemStockCode, categoryid);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Item_Class()
                    {
                        CategoryId = Convert.ToString(dr["CategoryId"]),
                        CategoryName = Convert.ToString(dr["CategoryName"]),
                        Active = Convert.ToString(dr["Active"]),
                        ASIN = Convert.ToString(dr["ASIN"]),
                        BrandId = Convert.ToString(dr["BrandId"]),
                        BrandName = Convert.ToString(dr["BrandName"]),
                        Description = Convert.ToString(dr["Description"]),
                        ItemId = Convert.ToString(dr["ItemId"]),
                        ItemImage1 = Convert.ToString(dr["ItemImage1"]),
                        ItemImage2 = Convert.ToString(dr["ItemImage2"]),
                        ItemMainImage = Convert.ToString(dr["ItemMainImage"]),
                        ItemMainImageUrl = Convert.ToString(dr["ItemMainImageUrl"]),
                        ItemMainImageUrl1 = Convert.ToString(dr["ItemMainImageUrl1"]),
                        ItemMainImageUrl2 = Convert.ToString(dr["ItemMainImageUrl2"]),
                        ItemStockCode = Convert.ToString(dr["ItemStockCode"]),
                        MetaDescription = Convert.ToString(dr["MetaDescription"]),
                        Name = Convert.ToString(dr["Name"]),
                        Price = Convert.ToString(dr["Price"]),
                        SearchKeyword = Convert.ToString(dr["SearchKeyword"]),
                        SKU = Convert.ToString(dr["SKU"]),
                        StockInHand = Convert.ToString(dr["StockInHand"]),
                        Title = Convert.ToString(dr["Title"]),
                        Vat = Convert.ToString(dr["Vat"]),
                    });
                }
            }
            return list;
        }

        [HttpGet]
        public IEnumerable<Item_Class> GetHotSaleItem()
        {
            List<Item_Class> list = new List<Item_Class>();
            DataTable dt = objModels.GetHotSaleItem();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Item_Class()
                    {
                        CategoryId = Convert.ToString(dr["CategoryId"]),
                        CategoryName = Convert.ToString(dr["CategoryName"]),
                        Active = Convert.ToString(dr["Active"]),
                        ASIN = Convert.ToString(dr["ASIN"]),
                        BrandId = Convert.ToString(dr["BrandId"]),
                        BrandName = Convert.ToString(dr["BrandName"]),
                        Description = Convert.ToString(dr["Description"]),
                        ItemId = Convert.ToString(dr["ItemId"]),
                        ItemImage1 = Convert.ToString(dr["ItemImage1"]),
                        ItemImage2 = Convert.ToString(dr["ItemImage2"]),
                        ItemMainImage = Convert.ToString(dr["ItemMainImage"]),
                        ItemMainImageUrl = Convert.ToString(dr["ItemMainImageUrl"]),
                        ItemMainImageUrl1 = Convert.ToString(dr["ItemMainImageUrl1"]),
                        ItemMainImageUrl2 = Convert.ToString(dr["ItemMainImageUrl2"]),
                        ItemStockCode = Convert.ToString(dr["ItemStockCode"]),
                        MetaDescription = Convert.ToString(dr["MetaDescription"]),
                        Name = Convert.ToString(dr["Name"]),
                        Price = Convert.ToString(dr["Price"]),
                        SearchKeyword = Convert.ToString(dr["SearchKeyword"]),
                        SKU = Convert.ToString(dr["SKU"]),
                        StockInHand = Convert.ToString(dr["StockInHand"]),
                        Title = Convert.ToString(dr["Title"]),
                        Vat = Convert.ToString(dr["Vat"]),
                    });
                }
            }
            return list;
        }


        [HttpGet]
        public IEnumerable<Item_Class> GetItemByBrand(String BrandId)
        {
            List<Item_Class> list = new List<Item_Class>();
            DataTable dt = objModels.GetItemByBrandId(BrandId);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Item_Class()
                    {
                        CategoryId = Convert.ToString(dr["CategoryId"]),
                        CategoryName = Convert.ToString(dr["CategoryName"]),
                        Active = Convert.ToString(dr["Active"]),
                        ASIN = Convert.ToString(dr["ASIN"]),
                        BrandId = Convert.ToString(dr["BrandId"]),
                        BrandName = Convert.ToString(dr["BrandName"]),
                        Description = Convert.ToString(dr["Description"]),
                        ItemId = Convert.ToString(dr["ItemId"]),
                        ItemImage1 = Convert.ToString(dr["ItemImage1"]),
                        ItemImage2 = Convert.ToString(dr["ItemImage2"]),
                        ItemMainImage = Convert.ToString(dr["ItemMainImage"]),
                        ItemMainImageUrl = Convert.ToString(dr["ItemMainImageUrl"]),
                        ItemMainImageUrl1 = Convert.ToString(dr["ItemMainImageUrl1"]),
                        ItemMainImageUrl2 = Convert.ToString(dr["ItemMainImageUrl2"]),
                        ItemStockCode = Convert.ToString(dr["ItemStockCode"]),
                        MetaDescription = Convert.ToString(dr["MetaDescription"]),
                        Name = Convert.ToString(dr["Name"]),
                        Price = Convert.ToString(dr["Price"]),
                        SearchKeyword = Convert.ToString(dr["SearchKeyword"]),
                        SKU = Convert.ToString(dr["SKU"]),
                        StockInHand = Convert.ToString(dr["StockInHand"]),
                        Title = Convert.ToString(dr["Title"]),
                        Vat = Convert.ToString(dr["Vat"]),
                    });
                }
            }
            return list;
        }
    }
}
