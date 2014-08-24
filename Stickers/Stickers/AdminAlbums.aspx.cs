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
    public partial class AdminAlbums : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString;

            if (!IsPostBack)
                connect();
        }

        public void connect()
        {
            string query = "select * from albums;";
            SqlCommand comm = new SqlCommand(query, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(comm);
            //Response.Write("Vlaga neso");
            DataSet ds = new DataSet();
            try
            {
                conn.Open();
                adapter.Fill(ds);
                gvAlbums.DataSource = ds;
                gvAlbums.DataBind();
                // Response.Write("Vlaga neso");
                ViewState["dataset"] = ds;
            }
            catch(Exception err)
            {
                lblMessage.Text = err.Message;
            }
            finally
            {
                conn.Close();
            }



        }

        protected void gvAlbums_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["dataset"];
            gvAlbums.EditIndex = -1;
            gvAlbums.DataSource = ds;
            gvAlbums.DataBind();
        }

        protected void gvAlbums_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["dataset"];
            gvAlbums.EditIndex = e.NewEditIndex;
            gvAlbums.DataSource = ds;
            gvAlbums.DataBind();
        }

        protected void gvAlbums_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string query = "UPDATE albums set name=@name, publisher=@publisher where id=@id";
            SqlCommand command = new SqlCommand(query, conn);

            TextBox tbName = (TextBox)gvAlbums.Rows[e.RowIndex].Cells[1].Controls[0];
            command.Parameters.AddWithValue("@name", tbName.Text);

            TextBox tbPublisher = (TextBox)gvAlbums.Rows[e.RowIndex].Cells[2].Controls[0];
            command.Parameters.AddWithValue("@publisher", tbPublisher.Text);

            int id = Convert.ToInt32(gvAlbums.Rows[e.RowIndex].Cells[0].Text);
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
            finally {
                conn.Close();
                gvAlbums.SelectedIndex = -1;
            }
            if (effect != 0) connect();
        }
    }
}