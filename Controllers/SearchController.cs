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
    public class SearchController : ApiController
    {
        Category_Models objModels = new Category_Models();


        [HttpPost]
        public IEnumerable<Item_Class> Request(string Searchtext)
        {
            List<Item_Class> list = new List<Item_Class>();
            DataTable dt = objModels.GetItemBySearchText(Searchtext);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    list.Add(new Item_Class()
                    {
                        CategoryId = Convert.ToString(dr["CategoryId"]),
                        CategoryName = Convert.ToString(dr["CategoryName"]),
                        Active = Convert.ToString(dr["Active"]),
                        ASIN = Convert.ToString(dr["ASIN"]),
                        BrandId = Convert.ToString(dr["BrandId"]),
                        BrandName = Convert.ToString(dr["BrandName"]),
                        Description = Convert.ToString(dr["Description"]),
                        ItemId = Convert.ToString(dr["ItemId"]),
                        ItemImage1 = Convert.ToString(dr["ItemImage1"]),
                        ItemImage3 = Convert.ToString(dr["ItemImage3"]),
                        ItemImage4 = Convert.ToString(dr["ItemImage4"]),
                        ItemImage5 = Convert.ToString(dr["ItemImage5"]),

                        ItemImage2 = Convert.ToString(dr["ItemImage2"]),
                        ItemMainImage = Convert.ToString(dr["ItemMainImage"]),
                        ItemMainImageUrl = Convert.ToString(dr["ItemMainImageUrl"]),
                        ItemMainImageUrl1 = Convert.ToString(dr["ItemMainImageUrl1"]),
                        ItemMainImageUrl3 = Convert.ToString(dr["ItemMainImageUrl3"]),
                        ItemMainImageUrl4 = Convert.ToString(dr["ItemMainImageUrl4"]),
                        ItemMainImageUrl5 = Convert.ToString(dr["ItemMainImageUrl5"]),

                        ItemMainImageUrl2 = Convert.ToString(dr["ItemMainImageUrl2"]),
                        ItemStockCode = Convert.ToString(dr["ItemStockCode"]),
                        MetaDescription = Convert.ToString(dr["MetaDescription"]),
                        Name = Convert.ToString(dr["Name"]),
                        Price = Convert.ToString(dr["Price"]),
                        SearchKeyword = Convert.ToString(dr["SearchKeyword"]),
                        SKU = Convert.ToString(dr["SKU"]),
                        StockInHand = Convert.ToString(dr["StockInHand"]),
                        Title = Convert.ToString(dr["Title"]),
                        Vat = Convert.ToString(dr["Vat"]),
                    });
                }
            }
            return list;
        }

    }
}
