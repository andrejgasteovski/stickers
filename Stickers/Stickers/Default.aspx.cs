﻿using System;
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
        SqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString;
            Session["connection"] = connection;

            if (Session["userID"] == null)
            {
                btnSignOut.Visible = false;
                tbEmail.Visible = true;
                tbPassword.Visible = true;
                btnLogin.Visible = true;
                hlSignUp.Visible = true;
            }
            else
            {
                btnSignOut.Visible = true;
                tbEmail.Visible = false;
                tbPassword.Visible = false;
                btnLogin.Visible = false;
                hlSignUp.Visible = false;
            }
            if (!this.IsPostBack)
            {
   
            }            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = tbEmail.Text;
            string password = tbPassword.Text;

            {
                string sqlQuery = "SELECT * FROM users";
                SqlCommand command = new SqlCommand(sqlQuery, connection);
                int userType = 1;

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        string tmpEmail = reader["email"].ToString();

                        if (tmpEmail == email)
                        {
                            string tmpPassword = reader["password"].ToString();
                            if (tmpPassword == password)
                            {
                                int userID = Convert.ToInt32(reader["id"].ToString());
                                Session["userID"] = userID;
                                userType = Convert.ToInt32(reader["userType"].ToString());
                            }
                        }
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

                if (Session["userID"] != null)
                {
                    if (userType == 1)
                        Response.Redirect("MyProfile.aspx");
                    else if (userType == 2)
                        Response.Redirect("AdminAlbums.aspx");
                    else
                        Response.Redirect("Default.aspx");
                }
                else
                {
                    lblMessage.Text = "Incorrect username or password";
                }
            }

        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session["albumID"] = null;
            Session["userID"] = null;
            Session["connection"] = null;
            Response.Redirect("Default.aspx");
        }

    }
}