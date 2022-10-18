using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetShopBoys.BE
{
    public class User
    {
        public string userId { get; set; }
        public string password { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string mail { get; set; }
        public Int64 phoneNumber { get; set; }
        public string province { get; set; }
        public string city { get; set; }
        public int postalCode { get; set; }
        public string fullAddress { get; set; }
        public string accountStatus { get; set; }
        public int failedLogons { get; set; }
    }
}
