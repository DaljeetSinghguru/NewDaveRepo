using System;
using System.Data;
using System.Data.SqlClient;

namespace TaskAPI.Models
{
    public class Connection
    {
        public string ConnectionReturn()
        {
            string Return = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return Return;
        }

        
    }
}