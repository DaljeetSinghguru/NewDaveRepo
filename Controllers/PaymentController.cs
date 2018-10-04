//using Braintree;
////using SlimApi2.App_Code;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Net;
//using System.Net.Http;
//using System.Web;
//using System.Web.Http;
//using System.Web.Http.Cors;
//using System.Web.Mvc;
//using TaskAPI.Models;

//namespace BraintreeASPExample.Controllers
//{
//    [EnableCors(origins: "*", headers: "*", methods: "*")]
//    public class CheckoutsController : Controller
//    {
//        public IBraintreeConfiguration config = new BraintreeConfiguration();

//        public static readonly TransactionStatus[] transactionSuccessStatuses = {
//                                                                                    TransactionStatus.AUTHORIZED,
//                                                                                    TransactionStatus.AUTHORIZING,
//                                                                                    TransactionStatus.SETTLED,
//                                                                                    TransactionStatus.SETTLING,
//                                                                                    TransactionStatus.SETTLEMENT_CONFIRMED,
//                                                                                    TransactionStatus.SETTLEMENT_PENDING,
//                                                                                    TransactionStatus.SUBMITTED_FOR_SETTLEMENT
//                                                                                };

//        public class ClientToken
//        {
//            public string token { get; set; }

//            public ClientToken(string token)
//            {
//                this.token = token;
//            }
//        }
//        public ActionResult New()
//        {
//            var gateway = config.GetGateway();
//            var clientToken = gateway.ClientToken.Generate();
//            ViewBag.ClientToken = clientToken;
//            return View();
//        }
//        [Route("RequestToken")]
//        [System.Web.Http.HttpPost]
//        public string GetClientToken()
//        {
//            var gateway = config.GetGateway();
//            var clientToken = gateway.ClientToken.Generate();
//            return clientToken;
//        }

//        [Route("Request")]
//        [System.Web.Http.HttpPost]
//        public ActionResult Create()
//        {
//            var gateway = config.GetGateway();
//            Decimal amount;

//            try
//            {
//                amount = Convert.ToDecimal(Request["amount"]);
//            }
//            catch (FormatException e)
//            {
//                TempData["Flash"] = "Error: 81503: Amount is an invalid format.";
//                return RedirectToAction("New");
//            }

//            var nonce = Request["payment_method_nonce"];
//            var request = new TransactionRequest
//            {
//                Amount = amount,
//                PaymentMethodNonce = nonce,
//                Options = new TransactionOptionsRequest
//                {
//                    SubmitForSettlement = true
//                }
//            };

//            Result<Transaction> result = gateway.Transaction.Sale(request);
//            if (result.IsSuccess())
//            {
//                Transaction transaction = result.Target;
//                return RedirectToAction("Show", new { id = transaction.Id });
//            }
//            else if (result.Transaction != null)
//            {
//                return RedirectToAction("Show", new { id = result.Transaction.Id });
//            }
//            else
//            {
//                string errorMessages = "";
//                foreach (ValidationError error in result.Errors.DeepAll())
//                {
//                    errorMessages += "Error: " + (int)error.Code + " - " + error.Message + "\n";
//                }
//                TempData["Flash"] = errorMessages;
//                return RedirectToAction("New");
//            }

//        }

//        [Route("Request")]
//        [System.Web.Http.HttpPost]

//        public string Request(PaymentReqestModel data)
//        {
//            var gateway = config.GetGateway();

//            var clientToken = gateway.ClientToken.Generate();

//            if (!string.IsNullOrEmpty(data.payment_method_nonce))
//            {
//                var nonce = data.payment_method_nonce;//"470f0c19-9567-0df1-6d4f-964bf94b65a1";// Request["payment_method_nonce"];
//                var request = new TransactionRequest
//                {
//                    Amount = Convert.ToDecimal(data.amount),
//                    PaymentMethodNonce = nonce,
//                    Options = new TransactionOptionsRequest
//                    {
//                        SubmitForSettlement = true
//                    }
//                };
//                /////

//                //////
//                Result<Transaction> result = gateway.Transaction.Sale(request);
//                if (result.IsSuccess())
//                {
//                    Transaction transaction = result.Target;

//                    string Messages = transaction.Id;
//                    //Messages += "Success: " + transaction.Id + " - " + "Your test transaction has been successfully processed." + "\n";
//                    return Messages;
//                }
//                else if (result.Transaction != null)
//                {
//                    // return RedirectToAction("Show", new { id = result.Transaction.Id });
//                    return clientToken;
//                }
//                else
//                {
//                    string errorMessages = "";
//                    foreach (ValidationError error in result.Errors.DeepAll())
//                    {
//                        errorMessages += "Error: " + (int)error.Code + " - " + error.Message + "\n";
//                    }
//                    //TempData["Flash"] = errorMessages;
//                    //return "New";
//                    return errorMessages;
//                }
//            }
//            else { return clientToken; }
//        }


//        public ActionResult Show(String id)
//        {
//            var gateway = config.GetGateway();
//            Transaction transaction = gateway.Transaction.Find(id);

//            if (transactionSuccessStatuses.Contains(transaction.Status))
//            {
//                TempData["header"] = "Sweet Success!";
//                TempData["icon"] = "success";
//                TempData["message"] = "Your test transaction has been successfully processed. See the Braintree API response and try again.";
//            }
//            else
//            {
//                TempData["header"] = "Transaction Failed";
//                TempData["icon"] = "fail";
//                TempData["message"] = "Your test transaction has a status of " + transaction.Status + ". See the Braintree API response and try again.";
//            };

//            ViewBag.Transaction = transaction;
//            return View();
//        }
//    }
//}



using Braintree;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;


using System.Collections;
using System.Web.Http.Cors;
//using SlimApi2.App_Code;
using TaskAPI.Models;
using BraintreeASPExample;

namespace SlimApi2.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]

    public class PaymentController : ApiController
    {
        public IBraintreeConfiguration config = new BraintreeConfiguration();

        public static readonly TransactionStatus[] transactionSuccessStatuses = {
                                                                                    TransactionStatus.AUTHORIZED,
                                                                                    TransactionStatus.AUTHORIZING,
                                                                                    TransactionStatus.SETTLED,
                                                                                    TransactionStatus.SETTLING,
                                                                                    TransactionStatus.SETTLEMENT_CONFIRMED,
                                                                                    TransactionStatus.SETTLEMENT_PENDING,
                                                                                    TransactionStatus.SUBMITTED_FOR_SETTLEMENT
                                                                                };

        //public ActionResult New()
        //{
        //    var gateway = config.GetGateway();
        //    var clientToken = gateway.ClientToken.generate();
        //  //  ViewBag.ClientToken = clientToken;
        //  //  return View();
        //}

        //[Route("RequestToken")]
        [System.Web.Http.HttpPost]
        public string RequestToken()
        {
            var gateway = config.GetGateway();
            var clientToken = gateway.ClientToken.Generate();
            return clientToken;
        }


        [Route("Request")]
        [System.Web.Http.HttpPost]

        public string Request(PaymentReqestModel data)
        {
            var gateway = config.GetGateway();

            var clientToken = gateway.ClientToken.Generate();

            if (!string.IsNullOrEmpty(data.payment_method_nonce))
            {
                var nonce = data.payment_method_nonce;//"470f0c19-9567-0df1-6d4f-964bf94b65a1";// Request["payment_method_nonce"];
                var request = new TransactionRequest
                {
                    Amount = Convert.ToDecimal(data.amount),
                    PaymentMethodNonce = nonce,
                    Options = new TransactionOptionsRequest
                    {
                        SubmitForSettlement = true
                    }
                };
                /////

                //////
                Result<Transaction> result = gateway.Transaction.Sale(request);
                if (result.IsSuccess())
                {
                    Transaction transaction = result.Target;

                    string Messages = transaction.Id;
                    //Messages += "Success: " + transaction.Id + " - " + "Your test transaction has been successfully processed." + "\n";
                    return Messages;
                }
                else if (result.Transaction != null)
                {
                    // return RedirectToAction("Show", new { id = result.Transaction.Id });
                    return clientToken;
                }
                else
                {
                    string errorMessages = "";
                    foreach (ValidationError error in result.Errors.DeepAll())
                    {
                        errorMessages += "Error: " + (int)error.Code + " - " + error.Message + "\n";
                    }
                    //TempData["Flash"] = errorMessages;
                    //return "New";
                    return errorMessages;
                }
            }
            else { return clientToken; }
        }

        //public string Show(String id)
        //{
        //    var gateway = config.GetGateway();
        //    Transaction transaction = gateway.Transaction.Find(id);
        //    string massage;
        //    if (transactionSuccessStatuses.Contains(transaction.Status))
        //    {
        //        //TempData["header"] = "Sweet Success!";
        //        //TempData["icon"] = "success";
        //        massage = "Your test transaction has been successfully processed.";
        //    }
        //    else
        //    {
        //        massage = "Your test transaction has a status of " + transaction.Status + ". See the Braintree API response and try again.";
        //    };

        //    //  ViewBag.Transaction = transaction;
        //    return massage;
        //}


    }
}


