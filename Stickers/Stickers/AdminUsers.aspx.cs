using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Stickers
{
    public partial class AdminUsers : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] == null)
                Response.Redirect("Login.aspx");

            conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString;

            if (!IsPostBack)
                connect();
        }

        public void connect()
        {
            string query = "select * from users;";
            SqlCommand comm = new SqlCommand(query, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(comm);
            //Response.Write("Vlaga neso");
            DataSet ds = new DataSet();
            try
            {
                conn.Open();
                adapter.Fill(ds);
                gvUsers.DataSource = ds;
                gvUsers.DataBind();
                // Response.Write("Vlaga neso");
                ViewState["dataset"] = ds;
            }
            catch (Exception err)
            {
                lblMessage.Text = err.Message;
            }
            finally
            {
                conn.Close();
            }



        }

        protected void gvUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["dataset"];
            gvUsers.EditIndex = -1;
            gvUsers.DataSource = ds;
            gvUsers.DataBind();
        }

        protected void gvUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["dataset"];
            gvUsers.EditIndex = e.NewEditIndex;
            gvUsers.DataSource = ds;
            gvUsers.DataBind();
        }

        protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string query = "UPDATE users set email=@email, password=@password, firstName=@firstName, lastName=@lastName, location=@location, dateOfBirth=@dateOfBirth, dateOfCreatingAccount=@dateOfCreatingAccount where id=@id";
            SqlCommand command = new SqlCommand(query, conn);

            TextBox tbName = (TextBox)gvUsers.Rows[e.RowIndex].Cells[1].Controls[0];
            command.Parameters.AddWithValue("@firstName", tbName.Text);

            TextBox tbSurname = (TextBox)gvUsers.Rows[e.RowIndex].Cells[2].Controls[0];
            command.Parameters.AddWithValue("@lastName", tbSurname.Text);

            TextBox tbEmail = (TextBox)gvUsers.Rows[e.RowIndex].Cells[3].Controls[0];
            command.Parameters.AddWithValue("@email", tbEmail.Text);

            TextBox tbPassword = (TextBox)gvUsers.Rows[e.RowIndex].Cells[4].Controls[0];
            command.Parameters.AddWithValue("@password", tbPassword.Text);

            TextBox tbLocation = (TextBox)gvUsers.Rows[e.RowIndex].Cells[5].Controls[0];
            command.Parameters.AddWithValue("@location", tbLocation.Text);

            TextBox tbDateOfBirth = (TextBox)gvUsers.Rows[e.RowIndex].Cells[6].Controls[0];
            command.Parameters.AddWithValue("@dateOfBirth", tbDateOfBirth.Text);

            TextBox tbDateOfCreatingAccount = (TextBox)gvUsers.Rows[e.RowIndex].Cells[7].Controls[0];
            command.Parameters.AddWithValue("@dateOfCreatingAccount", tbDateOfCreatingAccount.Text);

            // TextBox tbID = (TextBox)gvUsers.Rows[e.RowIndex].Cells[0].Controls[0];
            int id = Convert.ToInt32(gvUsers.Rows[e.RowIndex].Cells[0].Text);
            command.Parameters.AddWithValue("@id", id);


            int effect = 0;
            try
            {
                conn.Open();
                effect = command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                lblMessage.Text = err.Message;
            }
            finally
            {
                conn.Close();
                gvUsers.SelectedIndex = -1;
                gvUsers.EditIndex = -1;
            }
            if (effect != 0) connect();
        }
    }
}