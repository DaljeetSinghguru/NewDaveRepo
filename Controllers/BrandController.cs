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
    public class BrandController : ApiController
    {
        Brand_Models objModels = new Brand_Models();

        [HttpGet]
        public IEnumerable<Brand_Class> GetBrand_Find(string Active,string ss)
        {
            List<Brand_Class> list = new List<Brand_Class>();

            DataTable dt = objModels.Brand_Find(Active);

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Brand_Class()
                    {
                        RowId = Convert.ToString(dr["RowId"]),
                        BrandId = Convert.ToString(dr["BrandId"]),
                        BrandName = Convert.ToString(dr["BrandName"]),
                        MetaDescription = Convert.ToString(dr["MetaDescription"]),
                        SearchKeyword = Convert.ToString(dr["SearchKeyword"]),
                        filename = Convert.ToString(dr["filename"]),
                        SequenceNo = Convert.ToString(dr["SequenceNo"]),
                        Active = Convert.ToString(dr["Active"])
                    });
                }
            }
            return list;
        }

        [HttpPost]
        public string Brand_Insert(Brand_Class obj)
        {
            string Return = objModels.Brand_Insert(obj);
            return Return;
        }

        [HttpPost]
        public string Brand_Update(Brand_Class obj)
        {
            string Return = objModels.Brand_Update(obj);
            return Return;
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
        [HttpPost]

        public HttpResponseMessage InsertBrandData()
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
                var BrandName = httpRequest.Form.Get(0);
                var SearchKeyword = httpRequest.Form.Get(1);
                var MetaDescription = httpRequest.Form.Get(2);
                var Active = httpRequest.Form.Get(3);
                string msg = "";

                msg = new Brand_Models().InsertBrandIntoDB(filename[0], filepathname[0], BrandName, SearchKeyword, MetaDescription, Active);

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

        public HttpResponseMessage UpdateBrandFileData()
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
                var BrandId = httpRequest.Form.Get(0);

                string msg = "";

                msg = new Brand_Models().UpdateBrandFileIntoDB(filename[0], filepathname[0], BrandId);

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
