﻿
using System;
namespace TaskAPI.BOL
{
    public class Category_Class
    {
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string SequenceNo { get; set; }
        public string SearchKeyword { get; set; }
        public string MetaDescription { get; set; }
        public string Active { get; set; }
        public string RowId { get; set; }
        public string IsParentId { get; set; }
    }
}