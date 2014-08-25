using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Stickers
{
    public partial class Profile : System.Web.UI.Page
    {
        public static readonly string SELECT_USER_DATA = "SELECT * FROM users WHERE id = @userID";
        public static readonly string UPDATE_USER_DATA = "update users set email = @email, firstName = @firstName, lastName = @lastName, location = @location, dateOfBirth = @dateOfBirth where ID = @userID";
        public static readonly string UPDATE_USER_PASSWORD = "update users set password = @password where ID = @userID";
        public static readonly string SELECT_ALBUMS_COLLECTED = "select * from albums where ID in (select albumID from albumCollections where userID = @userID)";


        SqlConnection connection;
        int userID;

        string userFirstName;
        string userLastName;
        string userLocation;
        string userDateOfBirth;
        string userEmail;
        string userPassword;

        protected void Page_Load(object sender, EventArgs e)
        {
            //na krajot, ovoj if-else da se odkomentira
            if (Session["userID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                userID = Convert.ToInt32(Session["userID"].ToString());
                connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString;
            }

            if (!this.IsPostBack)
            {
                //na krajot, ovoj blok da se izbrise
                {
                    userFirstName = "Sandra";
                    initializeWelcomeText();
                }

                //    //na krajot, ovoj blok da se odkomentira

                {
                    initializeDateDropDownLists();
                    initializeUserData();
                    initializeWelcomeText();
                    initializeEditProfileAccordionPane();
                    initializeMyCollectionsPane();
                }

                //}
            }
        }

        private void initializeDateDropDownLists()
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

        private void initializeWelcomeText()
        {
            lblWelcome.Text = "Welcome, " + userFirstName;
        }

        private void initializeEditProfileAccordionPane()
        {
            tbFirstName.Text = userFirstName;
            tbLastName.Text = userLastName;
            tbEmail.Text = userEmail;
            tbLocation.Text = userLocation;
        }

        private void initializeUserData()
        {
            SqlCommand command = new SqlCommand(SELECT_USER_DATA, connection);
            command.Parameters.AddWithValue("userID", userID);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    userFirstName = reader["firstName"].ToString();
                    userLastName = reader["lastName"].ToString();
                    userLocation = reader["location"].ToString();
                    userEmail = reader["email"].ToString();
                    userDateOfBirth = reader["dateOfBirth"].ToString();
                    userPassword = reader["password"].ToString();
                }
            }
            catch (Exception err)
            {
                lblMessage.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }
        }


        protected void btnSubmitEditProfile_Click(object sender, EventArgs e)
        {
            int dayOfBirth = Convert.ToInt32(ddlDay.SelectedItem.ToString());
            int monthOfBirth = Convert.ToInt32(ddlMonth.SelectedItem.ToString());
            int yearOfBirth = Convert.ToInt32(ddlYear.SelectedItem.ToString());
            userDateOfBirth = String.Format("{0}-{1}-{2}", yearOfBirth, monthOfBirth, dayOfBirth);

            SqlCommand command = new SqlCommand(UPDATE_USER_DATA, connection);

            command.Parameters.AddWithValue("userID", userID);
            command.Parameters.AddWithValue("email", tbEmail.Text);
            command.Parameters.AddWithValue("firstName", tbFirstName.Text);
            command.Parameters.AddWithValue("lastName", tbLastName.Text);
            command.Parameters.AddWithValue("location", tbLocation.Text);
            command.Parameters.AddWithValue("dateOfBirth", userDateOfBirth);

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

        }

        protected void btnSubmitChangePassword_Click(object sender, EventArgs e)
        {
            initializeUserData();
            string oldPassword = tbOldPassword.Text;
            string newPassword = tbNewPassword.Text;
            string confirmNewPassword = tbConfrimNewPassword.Text;

            if (oldPassword == userPassword && newPassword == confirmNewPassword)
            {
                SqlCommand command = new SqlCommand(UPDATE_USER_PASSWORD, connection);
                command.Parameters.AddWithValue("userID", userID);
                command.Parameters.AddWithValue("password", newPassword);

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
                lblMessage.Text = "Password changed";
            }
            else
            {
                lblMessage.Text = "Old password is incorrect or passwords don't match";
            }
        }

        private void initializeMyCollectionsPane()
        {
            SqlCommand command = new SqlCommand(SELECT_ALBUMS_COLLECTED, connection);
            command.Parameters.AddWithValue("userID", userID);

            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    ListItem item = new ListItem();
                    item.Text = dr["name"].ToString();
                    item.Value = dr["id"].ToString();
                    lbCollections.Items.Add(item);
                }
            }
            catch (Exception err)
            {
                lblMessage.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }
        }

        protected void lbCollections_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnEditAlbum_Click(object sender, EventArgs e)
        {
            Session["albumID"] = lbCollections.SelectedValue;
            Response.Redirect("StickersCollection.aspx");
        }
    }
}