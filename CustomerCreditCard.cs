using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Web.Mvc;

namespace Credit_Card_Validation.Models
{
    public class CustomerCreditCard
    {
        private CreditCardDBEntities1 db = new CreditCardDBEntities1();
        public IQueryable<tblCreditCardsList> findAll()
        {
            return db.tblCreditCardsLists;
        }

        public IEnumerable<sp_CreditCardNumberValidator_Result> GetCreditCardRecord(string cardNo)
        {
            return db.sp_CreditCardNumberValidator(cardNo).ToArray();
        }
       
    }
}