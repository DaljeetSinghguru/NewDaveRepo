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
                System.Data.DataTable dt = new Menu_Models().GetMenu(); //new Login().gettable(" Select distinct w.FromDesignationId, fromdesig.Description as FromDesignationDescription,( isnull(fromuser.FirstName, '') + ' ' + isnull(fromuser.MiddleName, '') + ' ' + isnull(fromuser.LastName, '') ) as FromDesignationUserName, fromuser.HrUserId as FromHrUserId, w.ToDesignationId, todesig.Description as ToDesignationDescription,( isnull(u.FirstName, '') + ' ' + isnull(u.MiddleName, '') + ' ' + isnull(u.LastName, '') ) as ToDesignationUserName , u.HrUserId as ToUserHrUserId from Trn_Com_UserWorkFlow  as w inner join Trn_Hrm_UserRoleCentre as urc on urc.DesignationId = w.ToDesignationId inner join Trn_Hrm_UserRoleCentre as urcfrom on urcfrom.DesignationId = w.FromDesignationId inner join Mst_Hrm_User as u on u.HrUserId = urc.UserId inner join Mst_Hrm_User as fromuser on fromuser.HrUserId = urcfrom.UserId  inner join Mst_Hrm_Designation as todesig on todesig.DesignationId = w.ToDesignationId inner join Mst_Hrm_Designation as fromdesig on fromdesig.DesignationId = w.FromDesignationId where w.Active = 1 and w.WorkFlowId = 3 and   fromuser.HrUserId = " + hrUserId + "  and urcfrom.CentreId=urc.CentreId ");

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
