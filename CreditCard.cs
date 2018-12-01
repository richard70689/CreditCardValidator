using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Credit_Card_Validation.Models
{
    public class CreditCard
    {
        public int fldSeqNo { get; set; }
        public string fldCardNumber { get; set; }
        public string fldExpiryDate { get; set; }
        public string fldCardType { get; set; }
    }
}