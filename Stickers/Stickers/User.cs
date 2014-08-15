using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Stickers
{
    public class User
    {
        public int ID { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string firstName  { get; set; }
        public string lastName { get; set; }
        public string location { get; set; }
        //public DateTime dateOfBirth { get; set; }
        //public DateTime dateOfCreatingAccount { get; set; }
    }
}