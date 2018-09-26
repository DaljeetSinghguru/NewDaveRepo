
using System;
using System.Collections.Generic;

namespace TaskAPI.BOL
{
    public class Shipping_Class
    {
        public string TransectionId { get; set; }
        public string CustId { get; set; }
        public string Logincredentialpassword { get; set; }
        public string Logincredentialusername { get; set; }
        public string ItemName { get; set; }
        public string Price { get; set; }
        public int Quantity { get; set; }
        public DateTime Date { get; set; }
     
        public string EmailAddress { get; set; }
        //public IEnumerable<CustomerArray> CustomerArray { get; set; }
        public IEnumerable<ItemsArray> ItemsArray { get; set; }
        public string totalPrice { get; set; }
     }
    public class ItemsArray
    {
        public string sku { get; set; }
        public string name { get; set; }
        public string price { get; set; }
        public string quantity { get; set; }
        public string ItemType { get; set; }
        public string ItemId { get; set; }

    }
    //public class CustomerArray
    //{
    //    public string CustId { get; set; }
    //    public string email { get; set; }
    //    public string Password { get; set; }
      

    //}
}