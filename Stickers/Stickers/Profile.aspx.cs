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
    public partial class Profile1 : System.Web.UI.Page
    {
        

        int userProfileID; // korisnikot cij profil se otvora
        int userID; //korisnikot sto go otvora profilot (moze da bide najaven ili ne)
        SqlConnection connection;

        public static readonly string SELECT_ALBUMS_COLLECTED = "select * from albums where ID in (select albumID from albumCollections where userID = @userID)";
        public static readonly string SELECT_COLLECTED_STICKERS = "select distinct s.ID, sc.duplicates, s.name, s.number, s.albumID from stickerCollections sc, stickers s where sc.userID = @userID and s.albumID = @albumID and sc.stickerID = s.ID";
        public static readonly string SELECT_USER_DATA = "SELECT * FROM users WHERE id = @userID";

        protected void Page_Load(object sender, EventArgs e)
        {

            // na kraj ova da se odkomentira
            /*
            {
                if (Request.QueryString[0] != null)
                    userProfileID = Convert.ToInt32(Request.QueryString[0]);
                else
                    Response.Redirect("Default.aspx");

                userID = Convert.ToInt32(Session["userID"].ToString());
            }
            */

            userProfileID = 2;
            userID = 3;

            connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString;

            if (!this.IsPostBack)
            {
                //koga se raboti so baza ovoj blok da se odkokmentira
                /*
                {
                    initializeUserDetails();
                    initializeAlbumsList();
                }
                 * */

                //koga se raboti so baza, ova da se izbrise
                initializeAllShit();
            }
            
            
        }

        private void initializeAllShit()
        {
            ListItem item1 = new ListItem("FIFA World Cup 2014", "1");
            ListItem item2 = new ListItem("UEFA Champions League 2014/15", "2");
            lbAlbumsCollected.Items.Add(item1);
            lbAlbumsCollected.Items.Add(item2);

            lbStickersFromAlbum.Items.Add("Croatia - Ivan Rakitic");
            lbStickersFromAlbum.Items.Add("Croatia - Luka Modric");
            lbStickersFromAlbum.Items.Add("Croatia - Stipe Pletikosa");

            lblDateOfCreatingAccount.Text = "21-May-14";
            lblDateOfBirth.Text = "12-Jun-93";
            lblEmail.Text = "sandra.eveline@gmail.com";
            lblName.Text = "Sandra Eveline Delovska";
            lblLocation.Text = "Skopje";

        }

        private void initializeUserDetails()
        {
            SqlCommand command = new SqlCommand(SELECT_USER_DATA, connection);
            command.Parameters.AddWithValue("userID", userProfileID);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {                    
                    string userFirstName = reader["firstName"].ToString();
                    string userLastName = reader["lastName"].ToString();
                    lblName.Text = userFirstName + " " + userLastName;
                    lblLocation.Text = reader["location"].ToString();
                    lblEmail.Text = reader["email"].ToString();

                    lblDateOfBirth.Text = (reader["dateOfBirth"].ToString()).Substring(0, 9);
                    lblDateOfCreatingAccount.Text = (reader["dateOfCreatingAccount"].ToString()).Substring(0, 9);
                    
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

        private void initializeAlbumsList()
        { 
            SqlCommand command = new SqlCommand(SELECT_ALBUMS_COLLECTED, connection);
            command.Parameters.AddWithValue("userID", userProfileID);
            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    ListItem item = new ListItem();
                    item.Text = dr["name"].ToString();
                    item.Value = dr["id"].ToString();
                    lbAlbumsCollected.Items.Add(item);
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

        protected void lbAlbumsCollected_SelectedIndexChanged(object sender, EventArgs e)
        {
            //koga ima baza, ova da se odkomentira
            /*
             * 
            int albumID = Convert.ToInt32(lbAlbumsCollected.SelectedValue);
            initializeStickersList(userProfileID, albumID);
            lbStickersFromAlbum.Visible = true;
            lbStickersFromAlbum.DataBind();
            */
        }

        private void initializeStickersList(int userID, int albumID)
        {
            SqlCommand command = new SqlCommand(SELECT_COLLECTED_STICKERS, connection);
            command.Parameters.AddWithValue("userID", userID);
            command.Parameters.AddWithValue("albumID", albumID);
            
            List<Sticker> stickers = new List<Sticker>();

            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();

                while (dr.Read())
                {
                    int ID = Convert.ToInt32(dr["ID"].ToString());
                    string name = dr["name"].ToString();
                    int number = Convert.ToInt32(dr["number"].ToString());
                    int duplicates = Convert.ToInt32(dr["duplicates"].ToString());

                    Sticker sticker = new Sticker(ID, name, number, albumID, duplicates);
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
            lbStickersFromAlbum.DataSource = stickers;
        }
    }
}