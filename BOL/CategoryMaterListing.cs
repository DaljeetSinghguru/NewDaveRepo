
using System;
using System.Collections.Generic;

namespace TaskAPI.BOL
{

    //public class CategoryMaterListing
    //{
    //    public string MenuId { get; set; }
    //    public string ParentMenuId { get; set; }
    //    public string Description { get; set; }
    //    public string Help { get; set; }
    //    public string PageName { get; set; }
    //    public string Icon { get; set; }
    //    public string Active { get; set; }
    //    public string ActiveStartDate { get; set; }
    //    public string ActiveEndDate { get; set; }
    //    public string LastUpdatedDate { get; set; }
    //    public string SequenceNo { get; set; }
    //    public string IPAddress { get; set; }
    //    public string LoginUserId { get; set; }

    //    //Extra parameteres
    //    public string RowId { get; set; }
    //    public string ActiveValue { get; set; }
    //    public string UserId { get; set; }
    //    public string ParentMenu { get; set; }



    //    public class ParentMenuField
    //    {
    //        public string ParentId { get; set; }
    //        public string Description { get; set; }
    //        public string PageName { get; set; }
    //        public string Icon { get; set; }
    //        public IEnumerable<CategoryMaterListing.ChildMenuField> ChildFields { get; set; }
    //    }

    //    public class ChildMenuField
    //    {
    //        public string ChildId { get; set; }
    //        public string Description { get; set; }
    //        public string PageName { get; set; }
    //        public string Icon { get; set; }
    //        public IEnumerable<ChildMenuField> SubChildFields { get; set; }
    //    }
    //}

    public class MenuItem
    {
        public string Value { get; set; }
        public string text { get; set; }
        public string filename { get; set; }
        public string filePath { get; set; }
        public string ActiveOnPortal { get; set; }
        public string Description { get; set; }
        public string ParentMenuId { get; set; }
        public IEnumerable<ChildMenuItem> items = null;
    }

    public class ChildMenuItem
    {
        public string Value { get; set; }
        public string text { get; set; }
        public string filename { get; set; }
        public string filePath { get; set; }
        public string Description { get; set; }
        public string ActiveOnPortal { get; set; }
        public string ParentMenuId { get; set; }
        public IEnumerable<ChildMenuItem> items = null;

    }
}