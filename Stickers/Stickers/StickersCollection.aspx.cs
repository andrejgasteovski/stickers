using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Stickers
{
    public partial class StickersCollection : System.Web.UI.Page
    {
        public static readonly string SELECT_COLLECTED_STICKERS = "select s.ID, sc.duplicates, s.name, s.number, s.albumID from stickerCollections sc, stickers s where sc.userID = @userID and s.albumID = @albumID and sc.stickerID = s.ID";

        int userID;
        int albumID;
        SqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] == null || Session["albumID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                userID = Convert.ToInt32(Session["userID"].ToString());
                albumID = Convert.ToInt32(Session["albumID"].ToString());
                
                connection = (SqlConnection)Session["connection"];
            }

            if (!IsPostBack) {
                BindListView();

            }
        }

        private List<Sticker> getStickers()
        {
            List<Sticker> stickers = new List<Sticker>();

            SqlCommand command = new SqlCommand(SELECT_COLLECTED_STICKERS, connection);
            command.Parameters.AddWithValue("userID", userID);
            command.Parameters.AddWithValue("albumID", albumID);

            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();

                while (dr.Read())
                {
                    Sticker sticker = new Sticker();
                    sticker.ID = Convert.ToInt32(dr["ID"].ToString());
                    sticker.albumID = Convert.ToInt32(dr["albumID"].ToString());
                    sticker.name = dr["name"].ToString();
                    sticker.number = Convert.ToInt32(dr["number"].ToString());
                    sticker.duplicates = Convert.ToInt32(dr["duplicates"].ToString());

                    stickers.Add(sticker);
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
            return stickers;
        }

        public class Button
        {
            public string Name { get; set; }
        }

        List<Button> SampleData()
        {
            List<Button> p = new List<Button>();
            p.Add(new Button() { Name = "Button00" });
            p.Add(new Button() { Name = "Button01" });
            p.Add(new Button() { Name = "Button02" });
            p.Add(new Button() { Name = "Button03" });
            p.Add(new Button() { Name = "Button04" });
            p.Add(new Button() { Name = "Button05" });
            p.Add(new Button() { Name = "Button06" });
            p.Add(new Button() { Name = "Button07" });
            p.Add(new Button() { Name = "Button08" });
            p.Add(new Button() { Name = "Button09" });
            p.Add(new Button() { Name = "Button10" });
            p.Add(new Button() { Name = "Button11" });
            p.Add(new Button() { Name = "Button12" });
            return p;
        }
        void BindListView()
        {
            lvMyCollections.DataSource = getStickers();
            lvMyCollections.DataBind();
            
        }
        protected void lvMyCollections_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            //set current page startindex, max rows and rebind to false
            lvDataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

            //rebind List View
            BindListView();
        }

        protected void myFunction(object sender, EventArgs e)
        {
            
        }
    }
}