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

namespace Slimapi.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class ItemController : ApiController
    {

        [HttpPost]

        public HttpResponseMessage InsertItemData()
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
                var ItemName = httpRequest.Form.Get(0);
                var CategoryId = httpRequest.Form.Get(1);
                var BrandId = httpRequest.Form.Get(2);
                var SubCategoryId = httpRequest.Form.Get(3);
                var Description = httpRequest.Form.Get(4);
                var ItemStockCode = httpRequest.Form.Get(5);
                var Price = httpRequest.Form.Get(6);
                var Title = httpRequest.Form.Get(7);
                var StockInHand = httpRequest.Form.Get(8);
                string msg = "";

                msg = new Item_Models().InsertItemIntoDB(filename[0], filename[1], filename[2], filepathname[0], filepathname[1], filepathname[2],
                    ItemName, CategoryId, BrandId, SubCategoryId, Description, ItemStockCode, Price, Title, StockInHand);

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
                        CategoryName = Convert.ToString(dr["CategoryName"]),
                        StockInHand = Convert.ToString(dr["StockInHand"]),
                        SubCategoryName = Convert.ToString(dr["SubCategoryName"]),
                    });
                }
            }
            return list;
        }
        [HttpPost]

        public HttpResponseMessage UpdateItemData()
        {
            string[] filename = new string[10];
            string[] filepathname = new string[10];

            HttpResponseMessage result = null;
            var httpRequest = HttpContext.Current.Request;

            var docfiles = new List<string>();

            result = Request.CreateResponse(HttpStatusCode.Created, docfiles);
            var ItemName = httpRequest.Form.Get(0);
            var CategoryId = httpRequest.Form.Get(1);
            var BrandId = httpRequest.Form.Get(2);
            var SubCategoryId = httpRequest.Form.Get(3);
            var Description = httpRequest.Form.Get(4);
            var ItemStockCode = httpRequest.Form.Get(5);
            var Price = httpRequest.Form.Get(6);
            var Title = httpRequest.Form.Get(7);
            var StockInHand = httpRequest.Form.Get(8);
            var ItemId = httpRequest.Form.Get(9);
            string msg = "";

            msg = new Item_Models().UpdateItemIntoDB(ItemName, CategoryId, BrandId, SubCategoryId, Description, ItemStockCode, Price, Title, StockInHand, ItemId);

            if (msg != "")
            {
                result = Request.CreateResponse(JsonConvert.SerializeObject(msg));
            }
            //return data;

            return result;
        }
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
    }
}
