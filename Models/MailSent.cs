using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TaskAPI.BOL;

namespace TaskAPI.Models
{
    public class MailSent
    {
        Connection objCon = new Connection();
        public string VisaHelpDeskSupport(HelpSupportModel _helpSupportModel)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(objCon.ConnectionReturn());
            SqlCommand command = new SqlCommand("sp_VisaHelpDeskSupport", con);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.Add("@ModuleId", SqlDbType.VarChar).Value = _helpSupportModel.ModuleId;
            command.Parameters.Add("@RequestByUserId", SqlDbType.VarChar).Value = _helpSupportModel.RequestByUserId;
            command.Parameters.Add("@RequestByMailId", SqlDbType.VarChar).Value = _helpSupportModel.RequestByMailId;
            command.Parameters.Add("@RequestByExtNo", SqlDbType.VarChar).Value = _helpSupportModel.RequestByExtNo;
            command.Parameters.Add("@RequestByRoleId", SqlDbType.VarChar).Value = _helpSupportModel.RequestByRoleId;
            command.Parameters.Add("@RequestByCenterHeadId", SqlDbType.VarChar).Value = _helpSupportModel.RequestByCenterHeadId;
            command.Parameters.Add("@RequestByCenterId", SqlDbType.VarChar).Value = _helpSupportModel.RequestByCenterId;
            command.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = _helpSupportModel.Remarks;
            command.Parameters.Add("@IsMailSendToUser", SqlDbType.Bit).Value = _helpSupportModel.IsMailSendToUser;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@message"].Value);
            //if(results)
            return results;
        }

    }
}