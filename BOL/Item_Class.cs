
using System;
using System.Collections.Generic;

namespace TaskAPI.BOL
{
    public class Item_Class
    {
        public string ItemId { get; set; }
        public string Title { get; set; }
        public string Name { get; set; }
        public string SubCategoryId { get; set; }
        public string BrandId { get; set; }
        public string ASIN { get; set; }
        public string SKU { get; set; }
        public string ItemStockCode { get; set; }
        public string Description { get; set; }
        public string ItemMainImage { get; set; }
        public string ItemImage1 { get; set; }
        public string ItemImage2 { get; set; }
        public string Price { get; set; }
        public string ItemMainImageUrl { get; set; }

        public string ItemMainImageUrl1 { get; set; }
        public string ItemMainImageUrl2 { get; set; }
        public string BrandName { get; set; }
        public string CategoryName { get; set; }
        public string SubCategoryName { get; set; }
        public string StockInHand { get; set; }

    }
}