using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Data;

namespace Stickers
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                /*
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString;

                string sqlString = "select a.name Album, s.name Name, s.number Num from dbo.album a, dbo.sticker s where s.albumID = a.ID";
                SqlCommand command = new SqlCommand(sqlString, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();

                try
                {
                    connection.Open();
                    adapter.Fill(ds, "Stickers");
                    gvStickers.DataSource = ds;
                    gvStickers.DataBind();
                }
                catch(Exception err)
                {
                    lblMessage.Text = err.Message;
                }
                finally
                {
                    connection.Close();
                }
                */

                //tbUsername.Attributes.Add("onfocus", "if(this.value.toLowerCase() == 'e-mail') this.value = '';");
                //tbPassword.Attributes.Add("onfocus", "this.value = '';");
                //tbPassword.Attributes["type"] = "password";   
                
            }            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = tbUsername.Text;
            string password = tbPassword.Text;

            Session["username"] = username;
            Response.Redirect("Profile.aspx");
        }
    }
}