using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace Stickers
{
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 1; i < 32; i++)
                {
                    ddlDay.Items.Add(i.ToString());
                }
                for (int i = 1; i < 13; i++)
                {
                    ddlMonth.Items.Add(i.ToString());
                }
                for (int i = 1950; i < 2014; i++)
                {
                    ddlYear.Items.Add(i.ToString());
                }

                // tbEmail.Text = "Enter your email:";
                //tbEmail.OnFocus += OnFocus.EventHandle(RemoveText);
            }
            else {
                ViewState["firstName"] = tbFirstName.Text;
                if (ViewState["firstName"] != null)
                    Response.Write("Vo postback " + ViewState["firstName"].ToString());
            }
        }
        public void RemoveText(object sender, EventArgs e)
        {
             tbEmail.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ViewState["firstName"] = tbFirstName.Text;
            if (tbFirstName.Text != "" && tbLastName.Text != "" && tbEmail.Text != "" && tbLocation.Text != "" && tbPassword.Text != "")
            {
                ViewState["firstName"] = tbFirstName.Text;
                ViewState["lastName"] = tbLastName.Text;
                ViewState["email"] = tbEmail.Text;
                ViewState["location"] = tbLocation.Text;
                ViewState["password"] = tbPassword.Text;
            }
        }
        
        
    }
}