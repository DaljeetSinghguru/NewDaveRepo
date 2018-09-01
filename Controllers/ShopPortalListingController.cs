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
    public class ShopPortalListingController : ApiController
    {
        // GET api/<controller>
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        // GET api/<controller>/5
        [HttpGet]
        public IEnumerable<ShopPortalListing> Get()
        {
            List<ShopPortalListing> list = new List<ShopPortalListing>();

            System.Data.DataTable dt = new ShopingList_Models().PortalListing(); //new Login().gettable(" Select distinct w.FromDesignationId, fromdesig.Description as FromDesignationDescription,( isnull(fromuser.FirstName, '') + ' ' + isnull(fromuser.MiddleName, '') + ' ' + isnull(fromuser.LastName, '') ) as FromDesignationUserName, fromuser.HrUserId as FromHrUserId, w.ToDesignationId, todesig.Description as ToDesignationDescription,( isnull(u.FirstName, '') + ' ' + isnull(u.MiddleName, '') + ' ' + isnull(u.LastName, '') ) as ToDesignationUserName , u.HrUserId as ToUserHrUserId from Trn_Com_UserWorkFlow  as w inner join Trn_Hrm_UserRoleCentre as urc on urc.DesignationId = w.ToDesignationId inner join Trn_Hrm_UserRoleCentre as urcfrom on urcfrom.DesignationId = w.FromDesignationId inner join Mst_Hrm_User as u on u.HrUserId = urc.UserId inner join Mst_Hrm_User as fromuser on fromuser.HrUserId = urcfrom.UserId  inner join Mst_Hrm_Designation as todesig on todesig.DesignationId = w.ToDesignationId inner join Mst_Hrm_Designation as fromdesig on fromdesig.DesignationId = w.FromDesignationId where w.Active = 1 and w.WorkFlowId = 3 and   fromuser.HrUserId = " + hrUserId + "  and urcfrom.CentreId=urc.CentreId ");

            if (dt.Rows.Count > 0)
            {
                foreach (System.Data.DataRow dr in dt.Rows)
                {

                    list.Add(new ShopPortalListing()
                    {

                        SubCategoryName = Convert.ToString(dr["SubCategoryName"]),
                        BrandName = Convert.ToString(dr["BrandName"]),
                        StockInHand = Convert.ToString(dr["StockInHand"]),
                        ItemStockCode = Convert.ToString(dr["ItemStockCode"]),
                        Description = Convert.ToString(dr["Description"]),
                        Price = Convert.ToString(dr["Price"]),
                        Category = Convert.ToString(dr["Category Name"]),
                        Title = Convert.ToString(dr["Title"]),
                        Name = Convert.ToString(dr["Name"]),
                        ItemId = Convert.ToInt32(dr["ItemId"]),
                    });
                }
            }
            return list;
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
