using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaskAPI.BOL
{
    public class ShopPortalListing
    {
        public int ItemId { get; set; }

        public string SubCategoryName { get; set; }


        public string BrandName { get; set; }
        public string StockInHand { get; set; }
        public string ItemStockCode { get; set; }
        public string Description { get; set; }
        public string Price { get; set; }
        public string Category { get; set; }
        public string Title { get; set; }
        public string Name { get; set; }

    }
}