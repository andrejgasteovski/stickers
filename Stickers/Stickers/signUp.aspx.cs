using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Data.SqlClient;
using System.Configuration;

namespace Stickers
{
    public partial class signUp : System.Web.UI.Page
    {
        SqlConnection connection;
        public static readonly string INSERT_USER = "insert into users(email, password, firstName, lastName, location, dateOfBirth, dateOfCreatingAccount) values(@email, @password, @firstName, @lastName, @location, @dateOfBirth, (select current_timestamp))";

        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString;
            
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
            }
            else {
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
        public void RemoveText(object sender, EventArgs e)
        {
             tbEmail.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int dayOfBirth = Convert.ToInt32(ddlDay.SelectedItem.ToString());
            int monthOfBirth = Convert.ToInt32(ddlMonth.SelectedItem.ToString());
            int yearOfBirth = Convert.ToInt32(ddlYear.SelectedItem.ToString());
            string dateOfBirth = String.Format("{0}-{1}-{2}", yearOfBirth, monthOfBirth, dayOfBirth);

            SqlCommand command = new SqlCommand(INSERT_USER, connection);

            command.Parameters.AddWithValue("email", tbEmail.Text);
            command.Parameters.AddWithValue("firstName", tbFirstName.Text);
            command.Parameters.AddWithValue("lastName", tbLastName.Text);
            command.Parameters.AddWithValue("location", tbLocation.Text);
            command.Parameters.AddWithValue("password", tbPassword.Text);
            command.Parameters.AddWithValue("dateOfBirth", dateOfBirth);

            try
            {
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                lblMessage.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

            Response.Redirect("Login.aspx");
        }
    }
}