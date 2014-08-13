using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Stickers
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection connection;
        int userID;

        protected void Page_Load(object sender, EventArgs e)
        {
            //na krajot, ovoj if da se odkomentira
            /*
            if (Session["userID"] == null)
            {
                Response.Redirect("Login.aspx");
            } */
            if (Session["userID"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                userID = Convert.ToInt32(Session["userID"].ToString());
                connection = (SqlConnection)Session["connection"];
            }
            if (!this.IsPostBack)
            {
                //na krajot, ova da se izbrise
                String name = "Sandra";

                //na krajot, ova da se odkomentira
                //String name = getNameOfUser();
               
                lblWelcome.Text = "Welcome, " + name;

                
            }
        }

        private String getNameOfUser()
        {
            string SQLQuery = "SELECT firstName FROM users WHERE id = " + userID;
            SqlCommand command = new SqlCommand(SQLQuery, connection);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    string tmpName = reader["firstName"].ToString();
                    return tmpName;
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
            return null;
        }

       
    }
}