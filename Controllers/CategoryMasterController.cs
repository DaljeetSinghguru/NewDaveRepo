
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using TaskAPI.BOL;
using TaskAPI.Models;

namespace SlimApi2.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]

    public class CategoryMasterController : ApiController
    {


        Category_Models objModels = new Category_Models();

        
        public IEnumerable<MenuItem> GetMenu()
        {

            List<MenuItem> MenuList = new List<MenuItem>();
            try
            {
                MenuList = BindMenuItem().Select(m => new MenuItem()
                {
                    Value = m.Value,
                    text = m.text,
                    ActiveOnPortal=m.ActiveOnPortal,
                    filePath=m.filePath,
                    Description=m.Description,
                    filename=m.filename,
                    items = m.items,
                    ParentMenuId = m.ParentMenuId
                }).ToList<MenuItem>();
            }
            catch { }
            finally { }


            return MenuList;
        }
        public IEnumerable<MenuItem> BindMenuItem()
        {
            List<MenuItem> MenuList = new List<MenuItem>();
            try
            {
                DataTable Menudt = new DataTable();
                Menudt = new Category_Models().GetCategorywithSubCategory();
                
                //  Menudt = new login().BindMenu(UserId);
                if (Menudt.Rows.Count > 0)
                {
                    for (int i = 0; i < Menudt.Rows.Count; i++)
                    {
                        string parentId = Menudt.Rows[i]["IsParentId"].ToString();
                        if (parentId == "0")
                        {
                            MenuList.Add(new MenuItem()
                            {
                                Value = Convert.ToString(Menudt.Rows[i]["CategoryId"]),
                                text = Convert.ToString(Menudt.Rows[i]["CategoryName"]),
                                ParentMenuId = Convert.ToString(Menudt.Rows[i]["IsParentId"]),
                                filename = Convert.ToString(Menudt.Rows[i]["filename"]),
                                Description = Convert.ToString(Menudt.Rows[i]["Description"]),
                                filePath = Convert.ToString(Menudt.Rows[i]["filePath"]),
                                ActiveOnPortal = Convert.ToString(Menudt.Rows[i]["ActiveOnPortal"]),
                                items = BindChildMenu(Menudt, Convert.ToString(Menudt.Rows[i]["CategoryId"]))

                            });
                        }

                    }

                }
                
            }
            catch { }
            finally { }
            return MenuList;
        }
        public IEnumerable<ChildMenuItem> BindChildMenu(DataTable Dt, string ParnetMenuId)
        {
            List<ChildMenuItem> MenuList = new List<ChildMenuItem>();
            DataRow[] Rows = Dt.Select("IsParentId =" + ParnetMenuId);
            if (Rows.Length == 0) { return MenuList; }
            for (int i = 0; i < Rows.Length; i++)
            {
                MenuList.Add(new ChildMenuItem()
                {
                    Value = Convert.ToString(Rows[i]["CategoryId"]),
                    text = Convert.ToString(Rows[i]["CategoryName"]),
                    filename = Convert.ToString(Rows[i]["filename"]),
                    filePath = Convert.ToString(Rows[i]["filePath"]),
                    Description = Convert.ToString(Rows[i]["Description"]),
                    ActiveOnPortal = Convert.ToString(Rows[i]["ActiveOnPortal"]),
                    ParentMenuId = Convert.ToString(Rows[i]["IsParentId"]),
                    items = BindChildMenu(Dt, Convert.ToString(Rows[i]["CategoryId"]))

                });
               


            }
            return MenuList;
        }












        // GET api/<controller>
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        // GET api/<controller>/5

        //[HttpGet]
        //public string Get()
        //{
        //    string jsonData = string.Empty;
        //    try
        //    {
        //        List<MenuItem> list = new List<MenuItem>();

        //        System.Data.DataTable dt = new Category_Models().GetCategorywithSubCategory();

        //        List<Menu_Class.ParentMenuField> ParentMenuList = new List<Menu_Class.ParentMenuField>();

        //        if (dt.Rows.Count > 0)
        //        {
        //            for (int i = 0; i < dt.Rows.Count; i++)
        //            {
        //                string parentId = dt.Rows[i]["IsParentId"].ToString();
        //                if (parentId == "0")
        //                {
        //                    ParentMenuList.Add(new Menu_Class.ParentMenuField()
        //                    {
        //                        ParentId = Convert.ToString(dt.Rows[i]["IsParentId"]),
        //                        Description = Convert.ToString(dt.Rows[i]["CategoryName"]),
        //                        ChildFields = BindChildMenu(dt, Convert.ToString(dt.Rows[i]["CategoryId"]))
        //                    });
        //                }
        //            }

        //        }
        //        jsonData = JsonConvert.SerializeObject(ParentMenuList);
        //    }
        //    catch (Exception Ex)
        //    {
        //        jsonData = JsonConvert.SerializeObject(Ex.Message);
        //    }


        //    return jsonData;
        //}




        //public IEnumerable<Menu_Class.ChildMenuField> BindChildMenu(DataTable Dt, string ParnetMenuId)
        //{
        //    List<Menu_Class.ChildMenuField> MenuList = new List<Menu_Class.ChildMenuField>();
        //    DataRow[] Rows = Dt.Select("IsParentId =" + ParnetMenuId);
        //    if (Rows.Length == 0) { return MenuList; }
        //    for (int i = 0; i < Rows.Length; i++)
        //    {
        //        MenuList.Add(new Menu_Class.ChildMenuField()
        //        {
        //            ChildId = Convert.ToString(Rows[i]["CategoryId"]),
        //            Description = Convert.ToString(Rows[i]["CategoryName"]),
        //            childmenu = BindChildMenu(Dt, Convert.ToString(Rows[i]["CategoryId"]))
        //        });

        //    }
        //    return MenuList;
        //}


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