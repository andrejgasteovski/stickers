using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Stickers
{
    public class Album
    {
        public int ID { get; set; }
        public string name { get; set; }
        public string publisher { get; set; }

        public Album(int ID, string name, string publisher)
        {
            this.ID = ID;
            this.name = name;
            this.publisher = publisher;
        }
    }
}