
using System;
using System.Collections.Generic;

namespace TaskAPI.BOL
{
    public class SubCategory_Class
    {
        public string SubCategoryId { get; set; }
        public string CategoryId { get; set; }
        public string SubCategoryName { get; set; }
        public string SubCategoryDescription { get; set; }
        public string SearchKeyword { get; set; }
        public string MetaDescription { get; set; }

        public string SequenceNo { get; set; }
        public string Category { get; set; }
        public string Active { get; set; }
        public string RowId { get; set; }
    }
}