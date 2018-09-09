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

    }
}
