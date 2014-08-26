using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Stickers
{
    public partial class AdminStickers : System.Web.UI.Page
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
            string query = "select * from stickers;";
            SqlCommand comm = new SqlCommand(query, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(comm);
            //Response.Write("Vlaga neso");
            DataSet ds = new DataSet();
            try
            {
                conn.Open();
                adapter.Fill(ds);
                gvStickers.DataSource = ds;
                gvStickers.DataBind();
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

        protected void gvStickers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["dataset"];
            gvStickers.EditIndex = -1;
            gvStickers.DataSource = ds;
            gvStickers.DataBind();
        }

        protected void gvStickers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["dataset"];
            gvStickers.EditIndex = e.NewEditIndex;
            gvStickers.DataSource = ds;
            gvStickers.DataBind();
        }

        protected void gvStickers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string query = "UPDATE stickers set name=@name, number=@number where id=@id";
            SqlCommand command = new SqlCommand(query, conn);

            TextBox tbName = (TextBox)gvStickers.Rows[e.RowIndex].Cells[1].Controls[0];
            command.Parameters.AddWithValue("@name", tbName.Text);

            TextBox tbNumber = (TextBox)gvStickers.Rows[e.RowIndex].Cells[2].Controls[0];
            command.Parameters.AddWithValue("@number", tbNumber.Text);

            string tbID = gvStickers.Rows[e.RowIndex].Cells[0].Text;
            command.Parameters.AddWithValue("@id", Convert.ToInt32(gvStickers.Rows[e.RowIndex].Cells[0].Text));


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
                gvStickers.SelectedIndex = -1;
                gvStickers.EditIndex = -1;
            }
            if (effect != 0) connect();
        }
    }
}