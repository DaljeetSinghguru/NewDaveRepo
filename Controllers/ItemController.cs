using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;

using Newtonsoft.Json;
using System.Web.Http.Cors;
using System.Web;
using TaskAPI.Models;
using TaskAPI.BOL;
using System.Web.Script.Serialization;

namespace Slimapi.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class ItemController : ApiController
    {
        Item_Models objModels = new Item_Models();

        [HttpPost]
        public string InsertItemData(Item_Class obj)
        {
            string Return = objModels.Item_Insert(obj);
            return Return;
        }

        [HttpPost]
        public string UpdateItemData(Item_Class obj)
        {
            string Return = objModels.Item_Update(obj);
            return Return;
        }
        //[HttpPost]

        //public string InsertItemData()
        //{
        //    string[] filename = new string[10];
        //    string[] filepathname = new string[10];
        //    int i = 0;
        //    string result = null;
        //    var httpRequest = HttpContext.Current.Request;
        //    //if (httpRequest.Files.Count > 0)
        //    //{
        //    var docfiles = new List<string>();

        //    result = "";
        //    var ItemName = httpRequest.Form.Get(0);
        //    //var CategoryId = httpRequest.Form.Get(1);
        //    var BrandId = httpRequest.Form.Get(1);
        //    //var SubCategoryId = httpRequest.Form.Get(3);
        //    var Description = httpRequest.Form.Get(2);
        //    var ItemStockCode = httpRequest.Form.Get(3);
        //    var Price = httpRequest.Form.Get(4);
        //    var Title = httpRequest.Form.Get(5);
        //    var StockInHand = httpRequest.Form.Get(6);
        //    var VAT = httpRequest.Form.Get(7);
        //    var SearchKeyword = httpRequest.Form.Get(8);
        //    var MetaDescription = httpRequest.Form.Get(9);
        //    var Active = httpRequest.Form.Get(10);

        //    string msg = "";

        //    msg = new Item_Models().InsertItemIntoDB(
        //        //filename[0], filename[1], filename[2], filename[3], filename[4], filename[5], filepathname[0], filepathname[1], filepathname[2],
        //        //filepathname[3], filepathname[4], filepathname[5],
        //        ItemName,  BrandId,  Description, ItemStockCode, Price, Title,
        //        StockInHand, VAT, SearchKeyword, MetaDescription, Active);

        //    if (msg != "")
        //    {
        //        result = "Data Insert";
        //    }
        //    //return data;
        //    //}
        //    else
        //    {
        //        result = "Data not inserted ";
        //    }
        //    return result;
        //}


        [HttpGet]
        public string GetData()
        {
            string data = "";
            DataTable dt = new DataTable();
            dt = new Brand_Models().BindbrandData();
            if (dt.Rows.Count > 0)
            {
                data = JsonConvert.SerializeObject(dt);
            }
            return data;
        }


        [HttpGet]
        public IEnumerable<Item_Class> GetItemGridData()
        {


            List<Item_Class> list = new List<Item_Class>();
            DataTable dt = new DataTable();
            dt = new Item_Models().BindItemGridData();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Item_Class()
                    {
                        RowId = Convert.ToString(dr["RowId"]),
                        ItemId = Convert.ToString(dr["ItemId"]),
                        SubCategoryId = Convert.ToString(dr["SubCategoryId"]),
                        ASIN = Convert.ToString(dr["ASIN"]),
                        BrandId = Convert.ToString(dr["BrandId"]),
                        Description = Convert.ToString(dr["Description"]),
                        ItemImage1 = Convert.ToString(dr["ItemImage1"]),
                        ItemImage2 = Convert.ToString(dr["ItemImage2"]),
                        ItemMainImageUrl2 = Convert.ToString(dr["ItemMainImageUrl2"]),
                        ItemMainImage = Convert.ToString(dr["ItemMainImage"]),
                        ItemMainImageUrl = Convert.ToString(dr["ItemMainImageUrl"]),
                        ItemMainImageUrl1 = Convert.ToString(dr["ItemMainImageUrl1"]),
                        ItemStockCode = Convert.ToString(dr["ItemStockCode"]),
                        Name = Convert.ToString(dr["Name"]),
                        Title = Convert.ToString(dr["Title"]),
                        Price = Convert.ToString(dr["Price"]),
                        SKU = Convert.ToString(dr["SKU"]),
                        BrandName = Convert.ToString(dr["BrandName"]),
                       // CategoryName = Convert.ToString(dr["CategoryName"]),
                        StockInHand = Convert.ToString(dr["StockInHand"]),
                       // SubCategoryName = Convert.ToString(dr["SubCategoryName"]),
                        SearchKeyword = Convert.ToString(dr["SearchKeyword"]),
                        Active = Convert.ToString(dr["Active"]),
                        MetaDescription = Convert.ToString(dr["MetaDescription"]),
                        Vat = Convert.ToString(dr["Vat"]),
                       // CategoryId = Convert.ToString(dr["categoryId"]),
                    });
                }
            }
            return list;
        }
        //[HttpPost]

        //public HttpResponseMessage UpdateItemData()
        //{
        //    string[] filename = new string[10];
        //    string[] filepathname = new string[10];

        //    HttpResponseMessage result = null;
        //    var httpRequest = HttpContext.Current.Request;

        //    var docfiles = new List<string>();

        //    result = Request.CreateResponse(HttpStatusCode.Created, docfiles);
        //    var ItemName = httpRequest.Form.Get(0);
        //   // var CategoryId = httpRequest.Form.Get(1);
        //    var BrandId = httpRequest.Form.Get(1);
        //   // var SubCategoryId = httpRequest.Form.Get(3);
        //    var Description = httpRequest.Form.Get(2);
        //    var ItemStockCode = httpRequest.Form.Get(3);
        //    var Price = httpRequest.Form.Get(4);
        //    var Title = httpRequest.Form.Get(5);
        //    var StockInHand = httpRequest.Form.Get(6);
        //    var ItemId = httpRequest.Form.Get(7);
        //    var VAT = httpRequest.Form.Get(8);
        //    var SearchKeyword = httpRequest.Form.Get(9);
        //    var MetaDescription = httpRequest.Form.Get(10);
        //    var Active = httpRequest.Form.Get(11);
        //    string msg = "";

        //    msg = new Item_Models().UpdateItemIntoDB(ItemName, BrandId,  Description, ItemStockCode, Price, Title, StockInHand, ItemId, VAT, SearchKeyword, MetaDescription, Active);

        //    if (msg != "")
        //    {
        //        result = Request.CreateResponse(JsonConvert.SerializeObject(msg));
        //    }
        //    //return data;

        //    return result;
        //}
        [HttpPost]

        public HttpResponseMessage UpdateImageFile1()
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
                var ItemId = httpRequest.Form.Get(0);

                string msg = "";

                msg = new Item_Models().UpdateImageFile1IntoDB(filename[0], filepathname[0], ItemId);

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

        public HttpResponseMessage UpdateImageFile2()
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

                    postedFile.SaveAs(filePath);

                    docfiles.Add(filePath);
                    filename[i] = Convert.ToString(filenameWithHrUserId);
                    filepathname[i] = Convert.ToString(filePath);
                    i = i + 1;

                }
                result = Request.CreateResponse(HttpStatusCode.Created, docfiles);
                var ItemId = httpRequest.Form.Get(0);

                string msg = "";

                msg = new Item_Models().UpdateImageFile2IntoDB(filename[0], filepathname[0], ItemId);

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

        public HttpResponseMessage UpdateImageFile3()
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
                var ItemId = httpRequest.Form.Get(0);

                string msg = "";

                msg = new Item_Models().UpdateImageFile3IntoDB(filename[0], filepathname[0], ItemId);

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

        public HttpResponseMessage UpdateImageFile4()
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
                var ItemId = httpRequest.Form.Get(0);

                string msg = "";

                msg = new Item_Models().UpdateImageFile4IntoDB(filename[0], filepathname[0], ItemId);

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

        public HttpResponseMessage UpdateImageFile5()
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
                var ItemId = httpRequest.Form.Get(0);

                string msg = "";

                msg = new Item_Models().UpdateImageFile5IntoDB(filename[0], filepathname[0], ItemId);

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

        public HttpResponseMessage UpdateImageFile6()
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
                var ItemId = httpRequest.Form.Get(0);

                string msg = "";

                msg = new Item_Models().UpdateImageFile6IntoDB(filename[0], filepathname[0], ItemId);

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

        [HttpGet]
        public IEnumerable<Item_Class> GetAllItemStockCode()
        {


            List<Item_Class> list = new List<Item_Class>();
            DataTable dt = new DataTable();
            dt = new Item_Models().GetAllItemStockCode();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Item_Class()
                    {
                        ItemId = Convert.ToString(dr["ItemId"]),
                        ItemStockCode = Convert.ToString(dr["ItemStockCode"]),
                    });
                }
            }
            return list;
        }

       
        [HttpPost]
        public string InsertItemselectedAccessories(string ItemStockCode,string SelectedAccesories)
        {
            string Return = "";
            var selectedAccessoriesArry = SelectedAccesories.Split(':');
           

            //foreach (var prop in selectedAccessoriesArry1) { }
            for (int i = 0; i < selectedAccessoriesArry.Length; i++)
            {
                Return = objModels.Insert_selectedAccessories(ItemStockCode, selectedAccessoriesArry[i]);
            }
            ////foreach (var dr in obj.selectedAccessories)
            ////{
            //Return = objModels.Insert_selectedAccessories(obj.ItemStockCode, dr);
            ////}

            return Return;
        }
        [HttpPost]
        public string InsertItemSelectedRelatedItems(string ItemStockCode, string SelectedRelatedItems)
        {
            string Return = "";
            var selectedAccessoriesArry = SelectedRelatedItems.Split(':');
            
            for (int i = 0; i < selectedAccessoriesArry.Length; i++)
            {
                Return = objModels.Insert_selectedRelatedItems(ItemStockCode, selectedAccessoriesArry[i]);
            }
           

            return Return;
        }

        [HttpPost]
        public string LinkCategorywithSelectedItem(string ItemStockCode,string CategoryId)
        {
            string Return = objModels.LinkCategorywithSelectedItem(ItemStockCode, CategoryId);
            return Return;
        }
    }
}

