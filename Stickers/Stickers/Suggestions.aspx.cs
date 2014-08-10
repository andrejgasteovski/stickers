using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Stickers
{
    public partial class Suggestions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                connect();
        }

        public void connect()
        {
            //treba da se smeni za idinja na toj sto e logiran
            int id = 1;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=BETI-PC\\SQLEXPRESS;Initial Catalog=stickers;Integrated Security=True";

            string query = "select a.ID, a.img, a.name from albums a, albumCollections ac where ac.userID=" + id + " and a.ID=ac.AlbumID;";
            SqlCommand comm = new SqlCommand(query, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(comm);
            //Response.Write("Vlaga neso");
            DataSet ds = new DataSet();
            try
            {
                conn.Open();
                adapter.Fill(ds);
                gvAlbumi.DataSource = ds;
                gvAlbumi.DataBind();
                // Response.Write("Vlaga neso");
                ViewState["dataset"] = ds;
            }
            catch
            {
            }
            finally
            {
            }



        }
    }
}