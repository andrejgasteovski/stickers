﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Stickers
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            connection = (SqlConnection)Session["connection"];

            //na krajot, ovoj if da se odkomentira
            /*
            if (connection == null)
            {
                connection = new SqlConnection(ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString);
            } 
            */
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = tbEmail.Text;
            string password = tbPassword.Text;

            //na krajot, ovoj blok da se izbrise
            {
                Session["userID"] = 3;
                Response.Redirect("Profile.aspx");
            }

            //na krajot ovoj celiot blok da se odkomentira
            /*
            {
                string sqlQuery = "SELECT id, email, password FROM users";
                SqlCommand command = new SqlCommand(sqlQuery, connection);

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
                    Response.Redirect("Profile.aspx");
                }
                else
                {
                    lblMessage.Text = "Incorrect username or password";
                }
            }
            */
        }
    }
}