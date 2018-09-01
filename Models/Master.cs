using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WebApplication1.Models;
using static WebApplication1.Models.HelpSupportBusinessObjects;
using static WebApplication1.Models.SubModuleBusinessobjects;
using System.Web.Http;
using static WebApplication1.Models.CollegeCourseObjects;

namespace Slimapi.Models
{
    public class Master
    {
        public DataTable BindCentreHead(string Userid, string RoleId)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("BindCentreHead", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@UserId", SqlDbType.VarChar).Value = Userid;
            command.Parameters.Add("@RoleId", SqlDbType.VarChar, 100).Value = RoleId;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }
        public DataTable BindCentre(string UserId, string CentreHeadid)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("BindCentre", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@UserId", SqlDbType.VarChar).Value = UserId;
            command.Parameters.Add("@CentreHeadid", SqlDbType.VarChar, 100).Value = CentreHeadid;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }
        public DataTable BindRegion(string Userid, string RoleId)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("BindCentreRegion", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@UserId", SqlDbType.VarChar).Value = Userid;
            command.Parameters.Add("@RoleId", SqlDbType.VarChar, 100).Value = RoleId;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
        public DataTable BindExtension(string CentreId)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("BindExtension", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@CentreId", SqlDbType.VarChar).Value = CentreId;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindGender(string Active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetGender", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindNationality(string Active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetNationality", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindMaritalstatus(string Active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetMaritalStatus", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindUserformCourse(int centreid)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetUserformCourse", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@centreid", SqlDbType.Int).Value = centreid;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindState(string countryid, string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetState", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@countryid", SqlDbType.VarChar).Value = countryid;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindCountry(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetCountry", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindDistrict(string stateid, string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetDistrict", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Stateid", SqlDbType.VarChar).Value = stateid;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindTehsil(string districtid, string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetTehsil", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@districtId", SqlDbType.VarChar).Value = districtid;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindTehsilCity(string tehsilid, string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetTehsilCity", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@tehsilId", SqlDbType.VarChar).Value = tehsilid;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindEducationLevel(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetEducationLevel", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindStream(string educationlevelid, string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetStream", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@educationlevelid", SqlDbType.VarChar).Value = educationlevelid;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable BindQualification(string educationlevelid, string streamid, string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetQualification", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@educationlevelid", SqlDbType.VarChar).Value = educationlevelid;
            command.Parameters.Add("@streamid", SqlDbType.VarChar).Value = streamid;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindBoard(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetBoard", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable BindExamStatus(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetExamStatus", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable BindLocation(string collegeid, string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetCollegeLocation", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@collegeid", SqlDbType.VarChar).Value = collegeid;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable BindCollege(string stateid, string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetCollege", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Stateid", SqlDbType.VarChar).Value = stateid;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindDocumentCategory(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetDocumentCategory", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindDocumentSubCategory(string DocumentCategoryId, string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetDocumentSubCategory", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@DocumentCategoryId", SqlDbType.VarChar).Value = DocumentCategoryId;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindVisatype(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetVisaType", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindExamtype(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetExamtype", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindAdvertise(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetAdvertise", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public string InsertVisaStatus(string Description)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertVisaStatus", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Description", SqlDbType.VarChar, 500).Value = Description;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            msg = Convert.ToString(command.Parameters["@message"].Value);
            return msg;
        }


        public DataTable BindVisastatus(string Active)
        {

            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand cmd = new SqlCommand("sp_GetVisaStatus", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Active", SqlDbType.VarChar, 50).Value = Active;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public string UserExtensionInsert(string UserId, string CentreId, string ExtensionNo)
        {
            int msg = 0;
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            con.Open();
            SqlCommand command = new SqlCommand("UserExtensionInsert", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@UserId", SqlDbType.Int).Value = Convert.ToInt32(UserId);
            command.Parameters.Add("@CentreId", SqlDbType.Int).Value = Convert.ToInt32(CentreId);
            command.Parameters.Add("@Extension", SqlDbType.VarChar).Value = ExtensionNo;
            {
                msg = command.ExecuteNonQuery();

            }

            con.Close();
            return Convert.ToString(msg);
        }

        public DataTable BindDocumentSendMode(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetDocumentSendMode", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable BindRefusalAction(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetRefusalAction", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable BindDocumentType(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetDocumentType", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable BindCountryWiseDocumentList(int CountryId, int DocumentCountryId)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetCountryWiseDocumentList", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@countryid", SqlDbType.Int).Value = CountryId;
            command.Parameters.Add("@DocumentCountryId", SqlDbType.Int).Value = DocumentCountryId;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable BindMenu(string RoleId, string UserId, string CentreId)
        {

            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("UserBindMenu", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@RoleId", SqlDbType.VarChar).Value = RoleId;
            command.Parameters.Add("@UserId", SqlDbType.VarChar).Value = UserId;
            command.Parameters.Add("@CentreId", SqlDbType.VarChar).Value = CentreId;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable SearchMenu(string RoleId, string UserId, string CentreId, string MenuDescription)
        {

            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_SearchMenu", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@RoleId", SqlDbType.VarChar).Value = RoleId;
            command.Parameters.Add("@UserId", SqlDbType.VarChar).Value = UserId;
            command.Parameters.Add("@CentreId", SqlDbType.VarChar).Value = CentreId;
            command.Parameters.Add("@MenuDescription", SqlDbType.VarChar).Value = @MenuDescription;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
        public bool GetHrAccess(string UserId)
        {
            bool Result = false;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("select top 1 hruserid from Mst_hrm_UserAccess where hraccess=1 and hruserid=" + UserId, con);
            command.CommandType = CommandType.Text;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            if (tb.Rows.Count > 0)
            {
                Result = true;
            }
            return Result;

        }

        public DataTable GetCounsellorProfiledata(int Userid)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_getCounsellorProfile", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@userid", SqlDbType.Int).Value = Userid;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }


        public DataTable GetCategoryFeeType(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetCategoryFeeType", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
        public DataTable GetFeeType(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetFeeType", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable BindCentreCallIp(string centreheadid)
        {
            DataTable dt = new DataTable();
            if (centreheadid != null & centreheadid != "")
            {
                string CentreId = centreheadid;
                SqlConnection con = new SqlConnection(new login().GetConnectionString());
                SqlCommand command = new SqlCommand("BindCentreCallIp", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@CentreId", SqlDbType.VarChar).Value = CentreId;
                con.Open();
                try
                {
                    SqlDataReader dr = command.ExecuteReader();
                    dt.Load(dr);
                }
                catch { }
                finally { }
                con.Close();
            }

            return dt;
        }


        public string InsertStudntCallDetail(string userid, string studentid)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertStudentCallDetail", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@userid", SqlDbType.Int).Value = userid;
            command.Parameters.Add("@studentid", SqlDbType.VarChar).Value = studentid;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            msg = Convert.ToString(command.Parameters["@message"].Value);
            return msg;
        }


        public DataTable GetFollowupstatus(string active, int usertypeid, int hruserid)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetFollowupStatus", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            command.Parameters.Add("@usertypeid", SqlDbType.VarChar).Value = usertypeid;
            command.Parameters.Add("@hruserid", SqlDbType.VarChar).Value = hruserid;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable GetWorkingstatus(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetWorkingStatus", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable GetSponsorshipData(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetSponsorship", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable GetIntakeData(string active, string courseId)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetIntake", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            command.Parameters.Add("@courseId", SqlDbType.VarChar).Value = courseId;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable GetAssignedUserListData(string DepartmentId, string status)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetAssignedToUserDetails", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@DepartmentId", SqlDbType.VarChar).Value = DepartmentId;
            command.Parameters.Add("@ActiveStatus", SqlDbType.VarChar).Value = status;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }

        /// <summary>
        /// To fetch the modules data from the database
        /// </summary>
        /// <param name="statusType"></param>
        /// <param name="ModuleId"></param>
        /// <returns></returns>
        public DataTable GetSubModules(string statusType, string ModuleId, string SubModuleDescription,
            string SubModuleId, string CountryId, string StudentId, string UserCountryId, string CollegeId,
            string LoginUserId, string LoginUserRoleId)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            // SqlCommand command = new SqlCommand("sp_GetVisaSubModules", con);
            SqlCommand command = new SqlCommand("GetVisaEnquirySubModule", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Status", SqlDbType.VarChar).Value = statusType;
            command.Parameters.Add("@ModuleId", SqlDbType.VarChar).Value = ModuleId;
            command.Parameters.Add("@SubModuleDescription", SqlDbType.VarChar).Value = SubModuleDescription;
            command.Parameters.Add("@SubModuleId", SqlDbType.VarChar).Value = SubModuleId;
            command.Parameters.Add("@CountryId", SqlDbType.VarChar).Value = CountryId;
            command.Parameters.Add("@StudentId", SqlDbType.VarChar).Value = StudentId;
            command.Parameters.Add("@UserCountryId", SqlDbType.VarChar).Value = UserCountryId;
            command.Parameters.Add("@CollegeId", SqlDbType.VarChar).Value = CollegeId;
            command.Parameters.Add("@LoginUserId", SqlDbType.VarChar).Value = LoginUserId;
            command.Parameters.Add("@LoginUserRoleId", SqlDbType.VarChar).Value = LoginUserRoleId;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }
        public string InsertSubModule(SubModuleModel obj)
        {
            string msg = "";
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateSubModuleDetails", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@SubModuleDescription", SqlDbType.VarChar).Value = obj.SubModuleDescription;
            command.Parameters.Add("@ModulePageName", SqlDbType.VarChar).Value = obj.ModulePageName;
            command.Parameters.Add("active", SqlDbType.Bit).Value = obj.Active;
            command.Parameters.Add("@ModuleId", SqlDbType.Int).Value = obj.ModuleId;
            command.Parameters.Add("@SubModuleId", SqlDbType.Int).Value = obj.SubModuleId;
            command.Parameters.Add("@CountryId", SqlDbType.Int).Value = obj.CountryId;
            command.Parameters.Add("@Sequence", SqlDbType.Int).Value = obj.Sequence;
            command.Parameters.Add("@CountrySubModuleId", SqlDbType.Int).Value = obj.CountrySubModuleId;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            msg = Convert.ToString(command.Parameters["@message"].Value);
            return msg;

        }


        /// <summary>
        /// To fetch the modules data from the database
        /// </summary>
        /// <param name="statusType"></param>
        /// <param name="SubModuleId"></param>
        /// <returns></returns>
        public DataTable GetVisaEnquirySteps(string statusType, string SubModuleId, string stuUserId)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetVisaEnquirySteps", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Status", SqlDbType.VarChar).Value = statusType;
            command.Parameters.Add("@SubModuleId", SqlDbType.VarChar).Value = SubModuleId;
            command.Parameters.Add("@StudentId", SqlDbType.VarChar).Value = stuUserId;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }

        /// <summary>
        /// To fetch the document send mode details fetch from database
        /// </summary>
        /// <param name="statusType"></param>
        /// <param name="SubModuleId"></param>
        /// <returns></returns>
        public DataTable GetDocumentSendMode(string statusType)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetDocumentSendMode", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = statusType;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }


        /// <summary>
        /// Get the visa users list according to the CenterHeadId or CenterId
        /// </summary>
        /// <param name="CenterHeadId">A selected centerhead id</param>
        /// <param name="CenterId">A selected center id</param>
        /// <returns></returns>
        public DataTable GetVisaUsersByWorkflow(string CenterHeadId, string CenterId, string WorkFlowId, string FromDepartmentId)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetVisaUsersByWorkflow", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@CenterHeadId", SqlDbType.VarChar).Value = CenterHeadId;
            command.Parameters.Add("@CenterId", SqlDbType.VarChar).Value = CenterId;
            command.Parameters.Add("@workflowid", SqlDbType.VarChar).Value = WorkFlowId;
            command.Parameters.Add("@FromDepartmentId", SqlDbType.VarChar).Value = FromDepartmentId;

            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }


        /// <summary>
        /// Insert the new visa user history data
        /// </summary>
        /// <param name="_historymdl">A visa user modal contains a params which contains a data</param>
        /// <returns></returns>
        public string InsertVisaUserHistory(VisaUserHistoryBusinessObjects _historymdl)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertVisaUserHistory", con);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.Add("@SubModuleId", SqlDbType.VarChar).Value = _historymdl.SubModuleId;
            command.Parameters.Add("@StuUserId", SqlDbType.VarChar).Value = _historymdl.StuUserId;
            command.Parameters.Add("@FromUserId", SqlDbType.VarChar).Value = _historymdl.FromUserId;
            command.Parameters.Add("@ToUserId", SqlDbType.VarChar).Value = _historymdl.ToUserId;
            command.Parameters.Add("@Remarks", SqlDbType.VarChar, 5000).Value = _historymdl.Remarks;
            command.Parameters.Add("@FromDesignationId", SqlDbType.VarChar).Value = _historymdl.FromDesignationId;
            command.Parameters.Add("@ToDesignationId", SqlDbType.VarChar).Value = _historymdl.ToDesignationId;
            command.Parameters.Add("@FromDepartmentId", SqlDbType.VarChar).Value = _historymdl.FromDepartmentId;
            command.Parameters.Add("@ToDepartmentId", SqlDbType.VarChar).Value = _historymdl.ToDeprtmentId;
            command.Parameters.Add("@CenterId", SqlDbType.VarChar).Value = _historymdl.CenterId;
            command.Parameters.Add("@CenterHeadId", SqlDbType.VarChar).Value = _historymdl.CenterHeadId;
            command.Parameters.Add("@Result", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@Result"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@Result"].Value);
            return results;
        }



        /// <summary>
        /// To get the visa user history data
        /// </summary>
        /// <param name="VisaUserHistoryId"></param>
        /// <param name="StuUserId"></param>
        /// <returns></returns>
        public DataTable GetVisaUserHistory(string VisaUserHistoryId, string StuUserId)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetVisaUserHistory", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@VisaUserHistoryId", SqlDbType.VarChar).Value = VisaUserHistoryId;
            command.Parameters.Add("@StuUserId", SqlDbType.VarChar).Value = StuUserId;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }


        /// <summary>
        /// To get the visa user history data
        /// </summary>
        /// <param name="VisaUserHistoryId"></param>
        /// <param name="StuUserId"></param>
        /// <returns></returns>
        public DataTable ChkGetAssignedToWorkFlowProgress(string VisaStudentId, string Querytype)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_ChkGetAssignedToWorkFlowProgress", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@VisaStudentId", SqlDbType.VarChar).Value = VisaStudentId;
            command.Parameters.Add("@Querytype", SqlDbType.VarChar).Value = Querytype;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }


        /// <summary>
        /// To save the help support data in the database
        /// </summary>
        /// <param name="VisaHelpSupportModel _helpSupportModel"></param>
        /// <returns></returns>
        public string VisaHelpDeskSupport(VisaHelpSupportModel _helpSupportModel)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
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


        public DataTable GetMonthlyIncomeFrom(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetMonthlyIncomeFrom", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable GetReasonNameChanged(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetReasonNameChange", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }


        public DataTable GetPassportPlaceOfIssue(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetPassportPlaceOfIssue", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        #region    Master screen of region created by Priyanka   
        public DataTable GetRegion(string Active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetRegion", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public string InsertUpdateRegionData(CentreBusinessObject.Region objdata)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateRegion", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@RegionId", SqlDbType.VarChar).Value = objdata.RegionId;
            command.Parameters.Add("@RegionDescription", SqlDbType.VarChar).Value = objdata.RegionDescription;
            command.Parameters.Add("@SequenceNo", SqlDbType.VarChar).Value = objdata.SequenceNo;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = objdata.Active;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@message"].Value);
            return results;
        }

        #endregion


        #region    Master screen of CentreHead created by Priyanka   
        public DataTable GetCentreHeadData(string Active, string CentreHeadId)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetCentreHead", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@CentreHeadId", SqlDbType.VarChar).Value = CentreHeadId;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public string InsertUpdateCentreHeadData(CentreBusinessObject.CentreHead objdata)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateCentreHead", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@CentreHeadId", SqlDbType.VarChar).Value = objdata.CentreHeadId;
            command.Parameters.Add("@RegionId", SqlDbType.VarChar).Value = objdata.RegionId;
            command.Parameters.Add("@Description", SqlDbType.VarChar).Value = objdata.Description;
            command.Parameters.Add("@RollNoDesc", SqlDbType.VarChar).Value = objdata.RollNoDesc;
            command.Parameters.Add("@QRCodeSeries", SqlDbType.VarChar).Value = objdata.QRCodeSeries;
            command.Parameters.Add("@SequenceNo", SqlDbType.VarChar).Value = objdata.SequenceNo;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = objdata.Active;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@message"].Value);
            return results;
        }

        #endregion

        #region    Master screen of Campus created by Priyanka   
        public DataTable GetCampusData(string Active, string CentreId)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetCampus", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@CentreId", SqlDbType.VarChar).Value = CentreId;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public string InsertUpdateCampusData(CentreBusinessObject.Campus objdata)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateCampus", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@CentreHeadId", SqlDbType.VarChar).Value = objdata.CentreHeadId;
            command.Parameters.Add("@CentreId", SqlDbType.VarChar).Value = objdata.CentreId;
            command.Parameters.Add("@Description", SqlDbType.VarChar).Value = objdata.Description;
            command.Parameters.Add("@SequenceNo", SqlDbType.VarChar).Value = objdata.SequenceNo;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = objdata.Active;
            command.Parameters.Add("@AddressLine1", SqlDbType.VarChar).Value = objdata.AddressLine1;
            command.Parameters.Add("@AddressLine2", SqlDbType.VarChar).Value = objdata.AddressLine2;
            command.Parameters.Add("@CityId", SqlDbType.VarChar).Value = objdata.CityId;
            command.Parameters.Add("@Pin", SqlDbType.VarChar).Value = objdata.Pin;
            command.Parameters.Add("@LandLine1", SqlDbType.VarChar).Value = objdata.LandLine1;
            command.Parameters.Add("@LandLine2", SqlDbType.VarChar).Value = objdata.LandLine2;
            command.Parameters.Add("@LandLine3", SqlDbType.VarChar).Value = objdata.LandLine3;
            command.Parameters.Add("@LandLine4", SqlDbType.VarChar).Value = objdata.LandLine4;
            command.Parameters.Add("@HeadOffice", SqlDbType.VarChar).Value = objdata.HeadOffice;
            command.Parameters.Add("@PAN", SqlDbType.VarChar).Value = objdata.PAN;
            command.Parameters.Add("@TIN", SqlDbType.VarChar).Value = objdata.TIN;
            command.Parameters.Add("@StartTime", SqlDbType.VarChar).Value = objdata.StartTime;
            command.Parameters.Add("@EndTime", SqlDbType.VarChar).Value = objdata.EndTime;
            command.Parameters.Add("@WorkingOnMonday", SqlDbType.VarChar).Value = objdata.WorkingOnMonday;
            command.Parameters.Add("@WorkingOnTuesday", SqlDbType.VarChar).Value = objdata.WorkingOnTuesday;
            command.Parameters.Add("@WorkingOnWednesday", SqlDbType.VarChar).Value = objdata.WorkingOnWednesday;
            command.Parameters.Add("@WorkingOnThursday", SqlDbType.VarChar).Value = objdata.WorkingOnThursday;
            command.Parameters.Add("@WorkingOnFriday", SqlDbType.VarChar).Value = objdata.WorkingOnFriday;
            command.Parameters.Add("@WorkingOnSaturday", SqlDbType.VarChar).Value = objdata.WorkingOnSaturday;
            command.Parameters.Add("@WorkingOnSunday", SqlDbType.VarChar).Value = objdata.WorkingOnSunday;
            command.Parameters.Add("@MockTestBookingStartDay", SqlDbType.VarChar).Value = objdata.MockTestBookingStartDay;
            command.Parameters.Add("@MockTestBookingStartTime", SqlDbType.VarChar).Value = objdata.MockTestBookingStartTime;
            command.Parameters.Add("@MockTestBookingEndDay", SqlDbType.VarChar).Value = objdata.MockTestBookingEndDay;
            command.Parameters.Add("@MockTestBookingEndTime", SqlDbType.VarChar).Value = objdata.MockTestBookingEndTime;
            command.Parameters.Add("@MockTestDay", SqlDbType.VarChar).Value = objdata.MockTestDay;
            command.Parameters.Add("@MockTestOn", SqlDbType.VarChar).Value = objdata.MockTestOn;
            command.Parameters.Add("@PunchCentre", SqlDbType.VarChar).Value = objdata.PunchCentre;
            command.Parameters.Add("@IsStore", SqlDbType.VarChar).Value = objdata.IsStore;
            command.Parameters.Add("@InterviewOn", SqlDbType.VarChar).Value = objdata.InterviewOn;
            command.Parameters.Add("@educationfairon", SqlDbType.VarChar).Value = objdata.educationfairon;
            command.Parameters.Add("@MockTestSheetNo", SqlDbType.VarChar).Value = objdata.MockTestSheetNo;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@message"].Value);
            return results;
        }

        #endregion

        /// <summary>
        /// Insert and update of master screen Document Category
        /// </summary>
        /// <param name="objdata"></param>
        /// <returns></returns>
        public string InsertUpdateDocumentCategoryData(DocumentBusinessObject.DocumentCategory objdata)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateDocumentCategory", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@DocumentCategoryId", SqlDbType.VarChar).Value = objdata.DocumentCategoryId;
            command.Parameters.Add("@Description", SqlDbType.VarChar).Value = objdata.Description;
            command.Parameters.Add("@SequenceNo", SqlDbType.VarChar).Value = objdata.SequenceNo;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = objdata.Active;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@message"].Value);
            return results;
        }


        /// <summary>
        /// Insert and update of master screen Document sub Category
        /// </summary>
        /// <param name="objdata"></param>
        /// <returns></returns>
        public string InsertUpdateDocumentSubCategoryData(DocumentBusinessObject.DocumentSubCategory objdata)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateDocumentSubCategory", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@DocumentCategoryId", SqlDbType.VarChar).Value = objdata.DocumentCategoryId;
            command.Parameters.Add("@DocumentSubCategoryid", SqlDbType.VarChar).Value = objdata.DocumentSubCategoryId;
            command.Parameters.Add("@Description", SqlDbType.VarChar).Value = objdata.Description;
            command.Parameters.Add("@SequenceNo", SqlDbType.VarChar).Value = objdata.SequenceNo;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = objdata.Active;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@message"].Value);
            return results;
        }


        #region  Master screen of RelationShip created by Priyanka   
        public DataTable GetRelationShipData(string Active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetRelationShip", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public string InsertUpdateRelationShipData(RelationShipBusinessObject objdata)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateRelationShip", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@RelationshipId", SqlDbType.VarChar).Value = objdata.RelationshipId;
            command.Parameters.Add("@Description", SqlDbType.VarChar).Value = objdata.Description;
            command.Parameters.Add("@SequenceNo", SqlDbType.VarChar).Value = objdata.SequenceNo;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = objdata.Active;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@message"].Value);
            return results;
        }

        public DataTable GetModule(string active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetModule", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        #endregion

        #region Master screen of College created by Priyanka  
        public DataTable GetCollegeListData(string collegeCountryId, string CollegeStateId, string Active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetCollegeList", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@collegeCountryId", SqlDbType.VarChar).Value = collegeCountryId;
            command.Parameters.Add("@CollegeStateId", SqlDbType.VarChar).Value = CollegeStateId;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;


        }

        public string InsertUpdateCollegeListData(CollegeBusinessObject objdata)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateCollegeList", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@CollegeId", SqlDbType.VarChar).Value = objdata.CollegeId;
            command.Parameters.Add("@Stateid", SqlDbType.VarChar).Value = objdata.Stateid;
            command.Parameters.Add("@Description", SqlDbType.VarChar).Value = objdata.Description;
            command.Parameters.Add("@Turnaroundtime", SqlDbType.VarChar).Value = objdata.Turnaroundtime;
            command.Parameters.Add("@CollegeFollowupTime", SqlDbType.VarChar).Value = objdata.CollegeFollowupTime;
            command.Parameters.Add("@Portal", SqlDbType.VarChar).Value = objdata.Portal;
            command.Parameters.Add("@SequenceNo", SqlDbType.VarChar).Value = objdata.SequenceNo;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = objdata.Active;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@message"].Value);
            return results;
        }

        /// <summary>
        /// Get the Campus Extension Data
        /// </summary>
        /// <param name="ExtensionCentreId"></param>
        /// <param name="Active"></param>
        /// <returns></returns>
        public DataTable GetCampusExtensionData(string ExtensionCentreId, string Active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetCampusExtensionList", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@ExtensionCentreId", SqlDbType.VarChar).Value = ExtensionCentreId;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }

        /// <summary>
        /// Insert and update the campus extension data
        /// </summary>
        /// <param name="objdata"></param>
        /// <returns></returns>
        public string InsertUpdateCampusExtensionData(CampusExtensionBusinessObject objdata)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateCampusExtensionList", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@ExtensionCentreId", SqlDbType.VarChar).Value = objdata.ExtensionCentreId;
            command.Parameters.Add("@CentreId", SqlDbType.VarChar).Value = objdata.CentreId;
            command.Parameters.Add("@ExtensionNo", SqlDbType.VarChar).Value = objdata.ExtensionNo;
            command.Parameters.Add("@CABIN", SqlDbType.VarChar).Value = objdata.CABIN;
            command.Parameters.Add("@SequenceNo", SqlDbType.VarChar).Value = objdata.SequenceNo;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = objdata.Active;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@message"].Value);
            return results;
        }

        #endregion


        #region  Master screen of RelationShip created by Priyanka   
        public DataTable GetCollegeLocationMasterData(string StateId, string CollegeId, string Active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetCollegeLocationMaster", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@StateId", SqlDbType.VarChar).Value = StateId;
            command.Parameters.Add("@CollegeId", SqlDbType.VarChar).Value = CollegeId;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public string InsertUpdateCollegeLocationMasterData(CollegeLocationBusinessObject objdata)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateCollegeLocationMaster", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@LocationId", SqlDbType.VarChar).Value = objdata.LocationId;
            command.Parameters.Add("@CollegeId", SqlDbType.VarChar).Value = objdata.CollegeId;
            command.Parameters.Add("@Stateid", SqlDbType.VarChar).Value = objdata.Stateid;
            command.Parameters.Add("@Description", SqlDbType.VarChar).Value = objdata.Description;
            command.Parameters.Add("@SequenceNo", SqlDbType.VarChar).Value = objdata.SequenceNo;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = objdata.Active;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@message"].Value);
            return results;
        }


        #endregion

        /// <summary>
        /// Sub Module data created by Priyanka
        /// </summary>
        /// <param name="active"></param>
        /// <returns></returns>
        public DataTable GetSubModuleData(string active, string moduleid)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetSubModule", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = active;
            command.Parameters.Add("@ModuleId", SqlDbType.VarChar).Value = moduleid;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }


        public string CheckSendMessageResponse(string UserCountryId, string UserId, string MessageId)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_CheckSendMessageResponse", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@UserCountryId", SqlDbType.VarChar).Value = UserCountryId;
            command.Parameters.Add("@UserId", SqlDbType.VarChar).Value = UserId;
            command.Parameters.Add("@MessageId", SqlDbType.VarChar).Value = MessageId;
            command.Parameters.Add("@Result", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@Result"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@Result"].Value);
            return results;
        }

        public string InsertUpdateSendMessageResponse(string UserCountryId, string UserId, string MessageId, string IsSend,
            string SendById)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateSendMessageResponse", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@UserCountryId", SqlDbType.VarChar).Value = UserCountryId;
            command.Parameters.Add("@UserId", SqlDbType.VarChar).Value = UserId;
            command.Parameters.Add("@MessageId", SqlDbType.VarChar).Value = MessageId;
            command.Parameters.Add("@IsSend", SqlDbType.VarChar).Value = IsSend;
            command.Parameters.Add("@SendById", SqlDbType.VarChar).Value = SendById;
            command.Parameters.Add("@Result", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@Result"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@Result"].Value);
            return results;
        }

        public DataTable BindMasterCourse(string Active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetMasterCourseList", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable GetCollegeCourse(string Active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetCollegeCourse", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }


        public DataTable GetCollegeCourseData(string activeCollegeCourse, string locationid)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_getCollegeCourseData", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = activeCollegeCourse;
            command.Parameters.Add("@LocationId", SqlDbType.VarChar).Value = locationid;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable GetEnquiryMobileVerify(string MobileNumber)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_VerifyMobileNo", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@MobileNumber", SqlDbType.VarChar).Value = MobileNumber;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }

        public DataTable GetEnquiryChangePasswordData(string UserId, string Password)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("ChangePassword", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@UserId", SqlDbType.VarChar, 50).Value = UserId;
            command.Parameters.Add("@Token", SqlDbType.VarChar, 50).Value = "";
            command.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = Password;
            command.Parameters.Add("@Key", SqlDbType.VarChar, 50).Value = "MAKV2SPBNI99212";
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }

        public string UpdateEnquiryStatus(string VisaUserHrId, string statusId)
        {
            try
            {
                string results = string.Empty;
                SqlConnection con = new SqlConnection(new login().GetConnectionString());
                SqlCommand command = new SqlCommand("sp_UpdateEnquiryStatus", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@VisaUserHrId", SqlDbType.VarChar).Value = VisaUserHrId;
                command.Parameters.Add("@StatusId", SqlDbType.VarChar).Value = statusId;
                con.Open();
                command.ExecuteNonQuery();
                con.Close();
                return "1";
            }
            catch (Exception Ex)
            {
                return "";
            }
        }

        public DataTable GetStudentPreferencedCourses(string VisaUserHrId)
        {
            try
            {
                SqlConnection con = new SqlConnection(new login().GetConnectionString());
                SqlCommand command = new SqlCommand("sp_GetStudentPreferencedCourses", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@VisaUserId", SqlDbType.VarChar, 50).Value = VisaUserHrId;
                con.Open();
                SqlDataReader dr = command.ExecuteReader();
                var tb = new DataTable();
                tb.Load(dr);
                con.Close();
                return tb;
            }
            catch (Exception Ex)
            {
                return null;
            }
        }

        public DataTable GetStudentOfferedCourses(string VisaUserHrId)
        {
            try
            {
                SqlConnection con = new SqlConnection(new login().GetConnectionString());
                SqlCommand command = new SqlCommand("sp_GetStudentOfferedCourses", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@visaUserHrId", SqlDbType.VarChar, 50).Value = VisaUserHrId;
                con.Open();
                SqlDataReader dr = command.ExecuteReader();
                var tb = new DataTable();
                tb.Load(dr);
                con.Close();
                return tb;
            }
            catch (Exception Ex)
            {
                return null;
            }
        }

        public DataTable GetDocumentsList(string active, string callDDLFrom)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetDocumentsList", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = active;
            command.Parameters.Add("@IsDDl", SqlDbType.VarChar).Value = callDDLFrom;

            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;
        }

        public string InsertUpdateDocuments(DocumentsObject documents)
        {
            try
            {
                string results = string.Empty;
                SqlConnection con = new SqlConnection(new login().GetConnectionString());
                SqlCommand command = new SqlCommand("sp_InsertUpdateNewDocuments", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@DocumentId", SqlDbType.VarChar).Value = documents.DocumentId;
                command.Parameters.Add("@Description", SqlDbType.VarChar).Value = documents.Description;
                command.Parameters.Add("@Active", SqlDbType.VarChar).Value = documents.Active;
                command.Parameters.Add("@Sequence", SqlDbType.VarChar).Value = documents.Sequence;
                command.Parameters.Add("@QualificationId", SqlDbType.VarChar).Value = documents.QualificationId;
                command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
                command.Parameters["@message"].Direction = ParameterDirection.Output;
                con.Open();
                command.ExecuteNonQuery();
                con.Close();
                results = Convert.ToString(command.Parameters["@message"].Value);
                return results;
            }
            catch (Exception Ex)
            {
                return "";
            }
        }

        public string InsertUpdateCollegeCourse(InsertUpdCollegeCourse objdata)
        {
            string results = string.Empty;
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_InsertUpdateCollegeCourse", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@CollegeCourseId", SqlDbType.VarChar).Value = objdata.CollegeCourseId;
            command.Parameters.Add("@CountryId", SqlDbType.VarChar).Value = objdata.CountryId;
            command.Parameters.Add("@StateId", SqlDbType.VarChar).Value = objdata.StateId;
            command.Parameters.Add("@CollegeId", SqlDbType.VarChar).Value = objdata.CollegeId;
            command.Parameters.Add("@LocationId", SqlDbType.VarChar).Value = objdata.LocationId;
            command.Parameters.Add("@CourseName", SqlDbType.VarChar).Value = objdata.CourseName;
            command.Parameters.Add("@Active", SqlDbType.VarChar).Value = objdata.Active;
            command.Parameters.Add("@message", SqlDbType.VarChar, 50).Value = "";
            command.Parameters["@message"].Direction = ParameterDirection.Output;
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            results = Convert.ToString(command.Parameters["@message"].Value);
            return results;
        }


        /// <summary>
        /// To get the documents according to the documents
        /// </summary>
        /// <param name="VisaUserUserId">Visa User </param>
        /// <param name="QualificationId"></param>
        /// <returns></returns>
        public DataTable GetQualificationDocuments(string VisaUserUserId, string QualificationId)
        {
            try
            {
                SqlConnection con = new SqlConnection(new login().GetConnectionString());
                SqlCommand command = new SqlCommand("sp_GetQualificationDocuments", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@SelectedHruserId", SqlDbType.VarChar, 50).Value = VisaUserUserId;
                command.Parameters.Add("@QualificationId", SqlDbType.VarChar, 50).Value = QualificationId;
                con.Open();
                SqlDataReader dr = command.ExecuteReader();
                var tb = new DataTable();
                tb.Load(dr);
                con.Close();
                return tb;
            }
            catch (Exception Ex)
            {
                return null;
            }
        }
        public DataTable BindReasonOfferletternotApply(string Active)
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetReasonOfferletternotApply", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@active", SqlDbType.VarChar).Value = Active;
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
        
        public DataTable BindbrandData()
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("sp_GetBrandData", con);
            command.CommandType = CommandType.StoredProcedure;
          
            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
        public DataTable BindSubCategoryData()
        {
            SqlConnection con = new SqlConnection(new login().GetConnectionString());
            SqlCommand command = new SqlCommand("SubCategory_Find", con);
            command.CommandType = CommandType.StoredProcedure;

            con.Open();
            SqlDataReader dr = command.ExecuteReader();
            var tb = new DataTable();
            tb.Load(dr);
            con.Close();
            return tb;

        }
    }
}