using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stickers
{
    public partial class Profile : System.Web.UI.Page
    {
        string username;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                username = (string)Session["username"];
                lblWelcome.Text = "Welcome, " + username;
            }
        }
    }
}