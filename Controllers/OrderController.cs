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
        public string ShipmentHistory(Shipping_Class data)
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

                    cn.Close();

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
          string aa=    new Shipping_Models().GetOrderNUmber(data.TransectionId);

           
            return aa;

        }



    }
}
