using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Stickers
{
    public class Sticker
    {
        public int ID { get; set; }
        public string  name { get; set; }
        public int number { get; set; }
        public int albumID { get; set; }
        public int duplicates { get; set; }

        public Sticker()
        { }

        public Sticker(int ID, string name, int number, int albumID, int duplicates)
        {
            this.ID = ID;
            this.name = name;
            this.number = number;
            this.albumID = albumID;
            this.duplicates = duplicates;
        }
    }
}