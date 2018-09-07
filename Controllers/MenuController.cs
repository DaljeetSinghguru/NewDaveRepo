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
    public class MenuController : ApiController
    {
        // GET api/<controller>
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        // GET api/<controller>/5


        [HttpGet]
        public string Get()
        {
            string jsonData = string.Empty;
            try
            {
                List<Menu_Class> list = new List<Menu_Class>();
                System.Data.DataTable dt = new Menu_Models().GetMenu(); 

                List<Menu_Class.ParentMenuField> ParentMenuList = new List<Menu_Class.ParentMenuField>();

                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        string parentId = dt.Rows[i]["ParentId"].ToString();
                        if (parentId == "0")
                        {
                            ParentMenuList.Add(new Menu_Class.ParentMenuField()
                            {
                                ParentId = Convert.ToString(dt.Rows[i]["ParentId"]),
                                Description = Convert.ToString(dt.Rows[i]["SubCategoryName"]),
                                ChildFields = BindChildMenu(dt, Convert.ToString(dt.Rows[i]["SubCategoryId"]))
                            });
                        }
                    }

                }
                jsonData = JsonConvert.SerializeObject(ParentMenuList);
            }
            catch (Exception Ex)
            {
                jsonData = JsonConvert.SerializeObject(Ex.Message);
            }


            return jsonData;
        }




        public IEnumerable<Menu_Class.ChildMenuField> BindChildMenu(DataTable Dt, string ParnetMenuId)
        {
            List<Menu_Class.ChildMenuField> MenuList = new List<Menu_Class.ChildMenuField>();
            DataRow[] Rows = Dt.Select("ParentId =" + ParnetMenuId);
            if (Rows.Length == 0) { return MenuList; }
            for (int i = 0; i < Rows.Length; i++)
            {
                MenuList.Add(new Menu_Class.ChildMenuField()
                {
                    ChildId = Convert.ToString(Rows[i]["SubCategoryId"]),
                    Description = Convert.ToString(Rows[i]["SubCategoryName"]),
                });

            }
            return MenuList;
        }

        // POST api/<controller>
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }


    }
}
