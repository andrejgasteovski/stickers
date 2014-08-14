using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Stickers
{
    public class Sticker
    {
        public static readonly string CSS_CLASS_STICKER_MISSING = "stickerMissing";
        public static readonly string CSS_CLASS_STICKER_CHECKED = "stickerChecked";
        public static readonly string CSS_CLASS_STICKER_DUPLICATE = "stickerDuplicate";
        public static readonly string CSS_CLASS_STICKER_COLLECTED = "stickerCollected";

        public int ID { get; set; }
        public string  name { get; set; }
        public int number { get; set; }
        public int albumID { get; set; }
        public int duplicates { get; set; }
        public string cssClass { get; set; }

        public Sticker()
        { }

        public Sticker(int ID, string name, int number, int albumID, int duplicates)
        {
            this.ID = ID;
            this.name = name;
            this.number = number;
            this.albumID = albumID;
            this.duplicates = duplicates;

            if (duplicates == 0)
                this.cssClass = CSS_CLASS_STICKER_MISSING;
            else if (duplicates == 1)
                this.cssClass = CSS_CLASS_STICKER_COLLECTED;
            else
                this.cssClass = CSS_CLASS_STICKER_DUPLICATE;
        }
    }
}