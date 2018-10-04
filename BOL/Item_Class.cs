
using System;
using System.Collections.Generic;

namespace TaskAPI.BOL
{
    public class Item_Class
    {
        public string ItemId { get; set; }
        public string RowId { get; set; }
        public string Title { get; set; }
        public string Name { get; set; }
        public string SubCategoryId { get; set; }
        public string CategoryId { get; set; }
        public string BrandId { get; set; }
        public string ASIN { get; set; }
        public string SKU { get; set; }
        public string ItemStockCode { get; set; }
        public string Description { get; set; }
        public string ItemMainImage { get; set; }
        public string ItemImage1 { get; set; }
        public string ItemImage3 { get; set; }
        public string ItemImage4 { get; set; }
        public string ItemImage5 { get; set; }

        public string ItemImage2 { get; set; }
        public string Price { get; set; }
        public string ItemMainImageUrl { get; set; }

        public string ItemMainImageUrl1 { get; set; }
        public string ItemMainImageUrl3 { get; set; }
        public string ItemMainImageUrl4 { get; set; }
        public string ItemMainImageUrl5 { get; set; }
        public string ItemMainImageUrl2 { get; set; }
        public string BrandName { get; set; }
        public string CategoryName { get; set; }
        public string SubCategoryName { get; set; }
        public string StockInHand { get; set; }

        public string Active { get; set; }
        public string Vat { get; set; }
        public string SearchKeyword { get; set; }
        public string MetaDescription { get; set; }

    }
}