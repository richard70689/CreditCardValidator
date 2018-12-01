using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Credit_Card_Validation.Models;

namespace Credit_Card_Validation.Controllers
{
    public class CreditCardController : Controller
    {
        
        // GET: CreditCard
        public ActionResult Index()
        {
            CustomerCreditCard cc = new CustomerCreditCard();
            ViewBag.listCreditCards = cc.findAll();
            return View();
        }

        [HttpPost]       
        public ActionResult Index(FormCollection form)
        {
            CustomerCreditCard cc = new CustomerCreditCard();
            IEnumerable <sp_CreditCardNumberValidator_Result> ct = cc.GetCreditCardRecord(form["SearchString"].ToString());
            ViewBag.listCreditCards = cc.GetCreditCardRecord(form["SearchString"].ToString());
            ViewBag.CardType = ct.First().fldCardType;
            return View();
        }
    }
}