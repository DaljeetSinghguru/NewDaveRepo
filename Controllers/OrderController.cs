using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Http;
using System.Web.Http.Cors;
using TaskAPI.BOL;
using TaskAPI.Models;

namespace TaskAPI.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class OrderController : ApiController
    {
        Customer_Models objModels = new Customer_Models();
        Connection objCon = new Connection();

        [HttpPost]
        public bool ShipmentHistory(Shipping_Class data)
        {

                //Logincredentialpassword
                //Logincredentialusername



            IEnumerable<ItemsArray> items = data.ItemsArray;
            foreach (var item in items)
            {
                // item.name;
                SqlCommand cmd = new SqlCommand();
                SqlConnection cn = new SqlConnection(objCon.ConnectionReturn());
                try
                {


                    new Shipping_Models().UpdateShipmentHistory(data.TransectionId, data.CustId,  item.name, item.price, item.quantity, data.Date,  data.EmailAddress,  data.totalPrice,  
                        item.ItemType, item.ItemId,item.sku);



                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    if (cn.State == ConnectionState.Open)
                    {
                        cn.Close();
                    }
                    cmd.Dispose();
                    cn.Dispose();

                }
            }


            //Insert INTO Trn_Shop_ShipHistory values (@HrUserId,'6',@Date)
            //SqlCommand cmd1 = new SqlCommand();
            //SqlConnection cn1 = new SqlConnection(new Login().GetConnectionString());
            //try
            //{
            //    new Login().InsertTrn_Shop_ShipHistory(data.HrUserId,data.Date);
            //}
            //catch (Exception ex)
            //{
            //    throw ex;
            //}
            //finally
            //{
            //    if (cn1.State == ConnectionState.Open)
            //    {
            //        cn1.Close();
            //    }
            //    cmd1.Dispose();
            //    cn1.Dispose();
            //}
            return true;

        }



    }
}
