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

        [HttpGet]
        public IEnumerable<Order_Class> getordercustomerwise(string custid)
        {
            List<Order_Class> list = new List<Order_Class>();
            DataTable dt = objModels.getordercustomerwise(custid);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Order_Class()
                    {
                        CustId = Convert.ToString(dr["CustId"]),
                        Date = Convert.ToString(dr["Date"]),
                        ShopHistoryId = Convert.ToString(dr["ShopHistoryId"]),
                        Name = Convert.ToString(dr["Name"]),
                        PhoneNumber = Convert.ToString(dr["PhoneNumber"]),
                        Email = Convert.ToString(dr["Email"]),
                        HouseNo = Convert.ToString(dr["HouseNo"]),
                        AddressLine2 = Convert.ToString(dr["AddressLine2"]),
                        AddressLine3 = Convert.ToString(dr["AddressLine3"]),
                        AddressLine4 = Convert.ToString(dr["AddressLine4"]),
                        PostCode = Convert.ToString(dr["PostCode"]),
                        InvoiceName = Convert.ToString(dr["InvoiceName"]),
                        Company = Convert.ToString(dr["Company"]),
                        InvoiceAddessLine2 = Convert.ToString(dr["InvoiceAddessLine2"]),
                        InvoiceAddressLine3 = Convert.ToString(dr["InvoiceAddressLine3"]),
                        InvoiceAddressLine4 = Convert.ToString(dr["InvoiceAddressLine4"]),
                        InvoicePostCode = Convert.ToString(dr["InvoicePostCode"]),

                    });
                }
            }
            return list;
        }

    }
}
