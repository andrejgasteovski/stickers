using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace Stickers
{
    public partial class Message : System.Web.UI.Page
    {
        public static readonly string SELECT_DUPLICATES_MISSING = "select * from stickers where ID in (select b.ID from (select stickerID from stickerCollections sc, stickers s where sc.userID = @userDuplicatesID  and s.albumID = @albumID and sc.stickerID = s.ID and sc.duplicates > 1) a, (select ID from stickers where albumID = @albumID and ID not in (select stickerID from stickerCollections sc, stickers s where sc.userID = @userMissingID  and s.albumID = @albumID and sc.stickerID = s.ID)) b where a.stickerID = b.ID)";
        public static readonly string SELECT_EMAIL = "select * from users where id = @userID";


        int userProfileID; // korisnikot cij profil se otvora
        int userID; //korisnikot sto go otvora profilot (moze da bide najaven ili ne)
        int albumID;

        string senderEmail;
        string recepientEmail;
        string recepientFirstName;

        string stickersSenderForRecepient;
        string stickersRecepientForSender;

        SqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            // na kraj ova da se odkomentira
            /*
            {
                userID = Convert.ToInt32(Session["userID"].ToString());
                userProfileID = Convert.ToInt32(Session["userProfileID"].ToString());
                albumID = Convert.ToInt32(Session["albumID"].ToString());
            }
            */
            if (Session["userID"] == null)
                Response.Redirect("Login.aspx");


            //koga se raboti so baza, ova da se izbrise
            {
                userProfileID = 2;
                userID = 3;
                albumID = 1;
            }

            connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString;

            if (!this.IsPostBack)
            {
                initializeEmails();
                initializeStickers();
                initializeAlbumName();
                initializeMessageTitle();
                initializeMessageBody();
            }
        }

        private void initializeEmails()
        {
            //prvo da se povikuva getEmail() za userID, pa za userProfileID
            SqlCommand command = new SqlCommand(SELECT_EMAIL, connection);
            command.Parameters.AddWithValue("userID", userID);
            senderEmail = getEmail(command);

            SqlCommand command2 = new SqlCommand(SELECT_EMAIL, connection);
            command2.Parameters.AddWithValue("userID", userProfileID);
            recepientEmail = getEmail(command2);
            lblRecepientEmail.Text = recepientEmail;
            ViewState["recepientEmail"] = recepientEmail;
        }

        private string getEmail(SqlCommand command)
        {
            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();

                while (dr.Read())
                {
                    recepientFirstName = dr["firstName"].ToString(); //malce egzibicija
                    return dr["email"].ToString();
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

        private void initializeStickers()
        {
            //prvo se baraat slikite sto senderot gi ima za recepienetot (sender gi ima duplikat, recepient gi nema voopsto)
            SqlCommand command = new SqlCommand(SELECT_DUPLICATES_MISSING, connection);
            command.Parameters.AddWithValue("userDuplicatesID", userID);
            command.Parameters.AddWithValue("userMissingID", userProfileID);
            command.Parameters.AddWithValue("albumID", albumID);
            stickersSenderForRecepient = getStickers(command);

            SqlCommand command2 = new SqlCommand(SELECT_DUPLICATES_MISSING, connection);
            command2.Parameters.AddWithValue("userDuplicatesID", userProfileID);
            command2.Parameters.AddWithValue("userMissingID", userID);
            command2.Parameters.AddWithValue("albumID", albumID);
            stickersRecepientForSender = getStickers(command2);
        }

        private string getStickers(SqlCommand command)
        {
            StringBuilder sb = new StringBuilder();
            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                
                while (dr.Read())
                {
                    string stickerNumber = dr["number"].ToString();
                    sb.Append(stickerNumber + ", ");
                    //sb.Remove(sb.Length - 3, sb.Length - 1);
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
            return sb.ToString();
        }

        private void initializeAlbumName()
        { 
            // da se implementira nekogas
        }

        private void initializeMessageTitle()
        {
            tbTitle.Text = "Stickers Exchange";
        }

        private void initializeMessageBody()
        {
            
            
            
            StringBuilder sb = new StringBuilder();
            sb.Append("Hi " + recepientFirstName + ",\n\n");
            sb.Append("I have the following stickers for you:\n" + stickersSenderForRecepient);
            sb.Append("\n\nAnd you have the following stickers for me:\n" + stickersRecepientForSender);
            sb.Append("\n\nPlese contact me on the following mail so we can meet and exchange some stickers:\n" + senderEmail);

            tbBody.Text = sb.ToString();
        }


        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            string messageTitle = tbTitle.Text;
            string messageBody = tbBody.Text;
            recepientEmail = ViewState["recepientEmail"].ToString();


            var client = new SmtpClient("smtp.gmail.com", 587)
            {
                Credentials = new NetworkCredential("stickers.team@gmail.com", "StickersTeam"),
                EnableSsl = true
            };
            client.Send("stickers.team@gmail.com", recepientEmail, messageTitle, messageBody);

            Response.Redirect("Profile.aspx?id=" + userProfileID);
        }
    }
}