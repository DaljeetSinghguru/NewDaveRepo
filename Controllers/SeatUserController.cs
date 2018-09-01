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
    public class SeatUserController : ApiController
    {
        SeatUser_Models objModels = new SeatUser_Models();

        [HttpPost]
        public IEnumerable<SeatUser_Class> SeatUser_Find(string SeatUserId)
        {
            List<SeatUser_Class> list = new List<SeatUser_Class>();

            DataTable dt = objModels.SeatUser_Find(SeatUserId);

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new SeatUser_Class()
                    {
                        RowId = Convert.ToString(dr["RowId"]),
                        SeatUserId = Convert.ToString(dr["SeatUserId"]),
                        UserId = Convert.ToString(dr["UserId"]),
                        User = Convert.ToString(dr["User"]),
                        SeatId = Convert.ToString(dr["SeatId"]),
                        Seat = Convert.ToString(dr["Seat"]), 
                        Active = Convert.ToString(dr["Active"]),
                        ActiveValue = Convert.ToString(dr["ActiveValue"]),
                        ActiveStartDate = Convert.ToString(dr["ActiveStartDate"]),
                        ActiveEndDate = Convert.ToString(dr["ActiveEndDate"]),
                        LastUpdatedDate = Convert.ToString(dr["LastUpdatedDate"]),
                        SequenceNo = Convert.ToString(dr["SequenceNo"]),
                        IPAddress = Convert.ToString(dr["IPAddress"]),
                        LoginUserId = Convert.ToString(dr["LoginUserId"])
                    });
                } 
            }
            return list;
        }
        
        [HttpPost]
        public string SeatUser_Update(SeatUser_Class obj)
        {
            string Return = objModels.SeatUser_Update(obj);
            return Return;
        }

    }
}
