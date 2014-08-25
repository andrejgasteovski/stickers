using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Stickers
{
    public partial class Blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var div1 = new HtmlGenericControl("div");
            var div2 = new HtmlGenericControl("div");
            var div3 = new HtmlGenericControl("div");
            var div4 = new HtmlGenericControl("div");

            TextBox tb1 = new TextBox();
            tb1.Text = "Hey Guys, do you want to meet somewhere";
            tb1.Enabled = false;
            tb1.TextMode = TextBoxMode.MultiLine;
            panel.Controls.Add(tb1); 
            panel.Controls.Add(div1);

            TextBox tb2 = new TextBox();
            tb2.Text = "Sure why not.. let's meet at the park..";
            tb2.Enabled = false;
            tb2.TextMode = TextBoxMode.MultiLine;
            panel.Controls.Add(tb2);
            panel.Controls.Add(div2);

            TextBox tb3 = new TextBox();
            tb3.Text = "Are we idiots?";
            tb3.Enabled = false;
            tb3.TextMode = TextBoxMode.MultiLine;
            panel.Controls.Add(tb3);
            panel.Controls.Add(div3);

            TextBox tb4 = new TextBox();
            tb4.Text = "Yes, we are!";
            tb4.Enabled = false;
            tb4.TextMode = TextBoxMode.MultiLine;
            panel.Controls.Add(tb4);
            panel.Controls.Add(div4);
        }
    }
}