using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stickers
{
    public partial class Blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox tb1 = new TextBox();
            tb1.Text = "Hey Guys, do you want to meet somewhere";
            tb1.Enabled = false;
            tb1.TextMode = TextBoxMode.MultiLine;
            panel.Controls.Add(tb1);

            TextBox tb2 = new TextBox();
            tb2.Text = "Sure why not.. let's meet at the park..";
            tb2.Enabled = false;
            tb2.TextMode = TextBoxMode.MultiLine;
            panel.Controls.Add(tb2);
        }
    }
}