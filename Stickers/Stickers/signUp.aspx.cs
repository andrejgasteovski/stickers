using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stickers
{
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                for (int i = 1; i < 32; i++) {
                    ddlDay.Items.Add(i.ToString());
                }
                for (int i = 1; i < 13; i++) {
                    ddlMonth.Items.Add(i.ToString());
                }
                for (int i = 1950; i < 2014; i++) {
                    ddlYear.Items.Add(i.ToString());
                }
                tbEmail.Text = "Enter your email:";
                //tbEmail.OnFocus += OnFocus.EventHandle(RemoveText);
            }
        }
        public void RemoveText(object sender, EventArgs e)
        {
             tbEmail.Text = "";
        }

    }
}