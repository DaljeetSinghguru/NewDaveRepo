using System;
using System.Data;
using System.Data.SqlClient;
using TaskAPI.BOL;

namespace TaskAPI.Models
{
    public class PaymentReqestModel
    {
        public string amount { get; set; }
        public string payment_method_nonce { get; set; }
    }
}