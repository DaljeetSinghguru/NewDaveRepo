using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web.Http;
using System.Web.Http.Cors;
using TaskAPI.BOL;
using TaskAPI.Models;

namespace TaskAPI.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class SubCategoryController : ApiController
    {
       SubCategory_Models objModels = new SubCategory_Models();

        [HttpGet]
        public string GetData()
        {
            string data = "";
            DataTable dt = new DataTable();
            dt = new SubCategory_Models().BindSubCategoryData();
            if (dt.Rows.Count > 0)
            {
                data = JsonConvert.SerializeObject(dt);
            }
            return data;
        }
        
        [HttpGet]
        public IEnumerable<SubCategory_Class> GetSubCategoryData(string ID)
        {
            
            List<SubCategory_Class> list = new List<SubCategory_Class>();
            DataTable dt = new DataTable();
            dt = new SubCategory_Models().BindSubCategoryDatabasedonCategory(ID);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new SubCategory_Class()
                    {
                        SubCategoryId = Convert.ToString(dr["SubCategoryId"]),
                        SubCategoryName = Convert.ToString(dr["SubCategoryName"]),
                        SearchKeyword = Convert.ToString(dr["SearchKeyword"]),
                        MetaDescription = Convert.ToString(dr["MetaDescription"]),

                        CategoryId = Convert.ToString(dr["CategoryId"]),
                        Category = Convert.ToString(dr["Category Name"]),

                        Active = Convert.ToString(dr["Active"])
                    });
                }
            }
            return list;
        }
        [HttpPost]
        public IEnumerable<SubCategory_Class> SubCategory_Find(string Active)
        {
            List<SubCategory_Class> list = new List<SubCategory_Class>();

            DataTable dt = objModels.SubCategory_Find(Active);

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new SubCategory_Class()
                    {
                        RowId = Convert.ToString(dr["RowId"]),
                        SubCategoryId = Convert.ToString(dr["SubCategoryId"]),
                        SubCategoryName = Convert.ToString(dr["SubCategoryName"]),
                        CategoryId = Convert.ToString(dr["CategoryId"]),
                        Category = Convert.ToString(dr["Category Name"]),
                        SearchKeyword = Convert.ToString(dr["SearchKeyword"]),
                        MetaDescription = Convert.ToString(dr["MetaDescription"]),

                        Active = Convert.ToString(dr["Active"])
                    });
                }
            }
            return list;
        }

        [HttpPost]
        public string SubCategory_Insert(SubCategory_Class obj)
        {
            string Return = objModels.SubCategory_Insert(obj);
            return Return;
        }

        [HttpPost]
        public string SubCategory_Update(SubCategory_Class obj)
        {
            string Return = objModels.SubCategory_Update(obj);
            return Return;
        }
    }
}
