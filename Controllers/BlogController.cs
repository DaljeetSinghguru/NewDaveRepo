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
    public class BlogController : ApiController
    {
        Blog_Models objModels = new Blog_Models();

        //api for insert blog
        [HttpPost]

        public HttpResponseMessage insertblogwithImage()
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
                var Id = httpRequest.Form.Get(0);
                
                string msg = "";

                msg = new Blog_Models().insertblogwithImageIntoDB(filename[0], filepathname[0], Id);

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
        public int InsertblogData(Blog_Class obj)
        {
            int Return = objModels.Blog_Insert(obj);
            return Return;
        }
        //api for get blog


        [HttpGet]
        public IEnumerable<Blog_Class> GetAllBlogData()
        {


            List<Blog_Class> list = new List<Blog_Class>();
            DataTable dt = new DataTable();
            dt = new Blog_Models().BindBlogData();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Blog_Class()
                    {
                        BlogId = Convert.ToString(dr["BlogId"]),
                        Header = Convert.ToString(dr["Header"]),

                        ImageUrl= Convert.ToString(dr["ImageUrl"]),
                        ImagePath = Convert.ToString(dr["ImagePath"]),
                        Date = Convert.ToString(dr["Date"])
                    });
                }
            }
            return list;
        }


        [HttpGet]
        public IEnumerable<Blog_Class> GetSingleBlogData(string Id)
        {


            List<Blog_Class> list = new List<Blog_Class>();
            DataTable dt = new DataTable();
            dt = new Blog_Models().GetSingleBlogData(Id);

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Blog_Class()
                    {
                        //BlogId = Convert.ToString(dr["BlogId"]),
                        Header = Convert.ToString(dr["Header"]),
                        Description = Convert.ToString(dr["Content"]),
                        ImageUrl = Convert.ToString(dr["ImageUrl"]),
                        ImagePath = Convert.ToString(dr["ImagePath"]),
                        Date = Convert.ToString(dr["Date"])
                    });
                }
            }
            return list;
        }
        //api for update blog
        [HttpPost]
        public string InsertSendComment(SendComment_Class obj)
        {
            string Return = objModels.Blog_InsertSendComment(obj);
            return Return;
        }

        [HttpGet]
        public IEnumerable<SendComment_Class> getcommentdetailuserwise(string blogId)
        {


            List<SendComment_Class> list = new List<SendComment_Class>();
            DataTable dt = new DataTable();
            dt = new Blog_Models().getcommentdetailuserwise(blogId);

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new SendComment_Class()
                    {
                        Comment = Convert.ToString(dr["Comment"]),
                        blogid = Convert.ToString(dr["blogid"]),
                        loginusername = Convert.ToString(dr["UserName"]),
                        loginuserid = Convert.ToString(dr["Id"]),
                        Date = Convert.ToString(dr["Date"]),
                    });
                }
            }
            return list;
        }

    }
}

