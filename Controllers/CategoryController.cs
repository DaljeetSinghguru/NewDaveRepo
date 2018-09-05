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
                        CategoryName = Convert.ToString(dr["Category Name"]),
                        //SequenceNo = Convert.ToString(dr["SequenceNo"]),
                        Active = Convert.ToString(dr["Active"]),
                        MetaDescription= Convert.ToString(dr["MetaDescription"]),
                        SearchKeyword= Convert.ToString(dr["SearchKeyword"]),
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

        [HttpPost]
        public string SaveCategory(string name,string ParentId)
        {
            string Return = objModels.CategorySave(name, ParentId);
            return Return;
        }
        
 [HttpPost]
        public string DeleteCategory(string Id)
        {
            string Return = objModels.CategoryDelete(Id);
            return Return;
        }
    }
}
