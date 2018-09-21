using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaskAPI.BOL
{
    public class HelpSupportModel
    {
        public string HelpTicketId { get; set; }
        public string ModuleId { get; set; }
        public string RequestByUserId { get; set; }
        public string RequestByUserName { get; set; }
        public string RequestByMailId { get; set; }
        public string RequestByExtNo { get; set; }
        public string RequestByRoleId { get; set; }
        public string RequestByRoleName { get; set; }
        public string RequestByCenterHeadId { get; set; }
        public string RequestByCenterHeadName { get; set; }
        public string RequestByCenterId { get; set; }
        public string RequestByCenterName { get; set; }
        public string Remarks { get; set; }
        public string RequestDate { get; set; }
        public bool IsMailSendToUser { get; set; }
    }
}