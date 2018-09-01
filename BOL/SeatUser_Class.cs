
using System;
namespace TaskAPI.BOL
{
    public class SeatUser_Class
    {
        public string SeatUserId { get; set; }
        public string UserId { get; set; }
        public string SeatId { get; set; }
        public string Active { get; set; }
        public string ActiveStartDate { get; set; }
        public string ActiveEndDate { get; set; }
        public string LastUpdatedDate { get; set; }
        public string SequenceNo { get; set; }
        public string IPAddress { get; set; }
        public string LoginUserId { get; set; }

        //Extra parameteres
        public string RowId { get; set; }
        public string ActiveValue { get; set; }
        public string User { get; set; }
        public string Seat { get; set; }
    }
}