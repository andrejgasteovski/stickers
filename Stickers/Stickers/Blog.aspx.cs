using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Stickers
{
    public partial class Blog : System.Web.UI.Page
    {
        SqlConnection connection;
        int userID;

        public static readonly string SELECT_MESSAGES = "SELECT * FROM messages";
        public static readonly string SELECT_USER = "SELECT * FROM users where ID = @userID";
        public static readonly string INSERT_MESSAGE = "insert into messages(userID, message) values(@userID, @message)";

        protected void Page_Load(object sender, EventArgs e)
        {
            //initializeBlogWithoutDatabase();

            connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString;

            //ova da se odkomentira
            /*
            if (Session["userID"] == null)
                Response.Redirect("Login.aspx");
            else
                userID = Convert.ToInt32(Session["userID"].ToString());
            */
            userID = 2;

            if (!this.IsPostBack)
            {
                initializeFirstBox();
                initializeBlogWithDatabase();
            }
        }

        private void initializeFirstBox()
        {
            var div = new HtmlGenericControl("div");
            TextBox tb = new TextBox();
            tb.Text = "";
            tb.TextMode = TextBoxMode.MultiLine;
            tb.CssClass = "textBox";
            panel.Controls.Add(tb);
            panel.Controls.Add(div);

            Button btnSubmit = new Button();
            panel.Controls.Add(btnSubmit);
        }

        private void initializeBlogWithoutDatabase()
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

        private void initializeBlogWithDatabase()
        {
            panel.Controls.Clear();
            SqlCommand command = new SqlCommand(SELECT_MESSAGES, connection);
            
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    string message = reader["message"].ToString();
                    int userID = Convert.ToInt32(reader["userID"].ToString());
                    string userName = getNameForUserID(userID);

                    addNewTextBox(userName, message);
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

        private string getNameForUserID(int userID)
        {
            SqlConnection connection2 = new SqlConnection();
            connection2.ConnectionString = ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString;

            SqlCommand command = new SqlCommand(SELECT_USER, connection2);
            command.Parameters.AddWithValue("userID", userID);

            try {
                connection2.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    string firstName = reader["firstName"].ToString();
                    string lastName = reader["lastName"].ToString();
                    return firstName + " " + lastName;
                }
            }
            catch (Exception err)
            {
                lblMessage.Text = err.Message;
            }
            finally
            {
                connection2.Close();
            }
            return null;
        }

        private void addNewTextBox(string name, string message)
        {
            var div = new HtmlGenericControl("div");
            TextBox tb = new TextBox();
            tb.Text = name + ": " + message;
            tb.Enabled = false;
            tb.TextMode = TextBoxMode.MultiLine;
            tb.CssClass = "textBox";
            panel.Controls.Add(tb);
            panel.Controls.Add(div);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string newMessage = tbNewMessage.Text;
            SqlCommand command = new SqlCommand(INSERT_MESSAGE, connection);
            command.Parameters.AddWithValue("userID", userID);
            command.Parameters.AddWithValue("message", newMessage);

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

            tbNewMessage.Text = "";
            initializeBlogWithDatabase();
        }
    }
}