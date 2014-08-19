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
        public static readonly string SELECT_COLLECTED_STICKERS = "select distinct s.ID, sc.duplicates, s.name, s.number, s.albumID from stickerCollections sc, stickers s where sc.userID = @userID and s.albumID = @albumID and sc.stickerID = s.ID";
        public static readonly string SELECT_ALL_STICKERS = "select * from stickers where albumID = @albumID";
        public static readonly string UPDATE_STICKER_DUPLICATES = "update stickerCollections set duplicates = @duplicates where stickerID = @stickerID and userID = @userID";
        public static readonly string INSERT_STICKER_COLLECTION = "insert into stickerCollections(userID, stickerID, dateOfAcquirement, duplicates) values(@userID, @stickerID, (select CURRENT_TIMESTAMP), @duplicates)";
        //public static readonly string SELECT_USERS_WITH_DUPLICATES = "select * from users where ID in(select distinct userID from stickerCollections where duplicates > 1 and stickerID in (@stickersIDs))";
        //public static readonly string SELECT_USERS_MISSING_STICKERS = "select * from users where ID not in(select userID from stickerCollections where stickerID in (@stickersIDs))";
        public static readonly string DELETE_STICKER_COLLECTION = "delete from stickerCollections where userID = @userID and stickerID = @stickerID";


        int userID;
        int albumID;
        SqlConnection connection;
        List<Sticker> selectedStickers;
        Dictionary<int, Sticker> stickersAll;
        Dictionary<int, Sticker> stickersCollected;

        protected void Page_Load(object sender, EventArgs e)
        {

            //koga se raboti so baza, ovoj blok da se odkomentira
            
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
            

                if (!IsPostBack)
                {
                    BindListView();
                    selectedStickers = new List<Sticker>();
                    lbSelected.DataSource = selectedStickers;   
                }
                else
                {
                    List<Sticker> selectedStickers = new List<Sticker>();
                    if (ViewState["selectedStickers"] != null)
                    {
                        selectedStickers = (List<Sticker>)ViewState["selectedStickers"];
                    }
                    lbSelected.DataSource = selectedStickers;
                    lbSelected.DataBind();
                }
            }
            
        }

        //fetch all the stickers that user has collected, including duplicates
        private Dictionary<int, Sticker> getStickersCollected()
        {
            Dictionary<int, Sticker> stickers = new Dictionary<int, Sticker>();

            SqlCommand command = new SqlCommand(SELECT_COLLECTED_STICKERS, connection);
            command.Parameters.AddWithValue("userID", userID);
            command.Parameters.AddWithValue("albumID", albumID);

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
                    stickers.Add(sticker.number, sticker);
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

        //fetch all the stickers from some album
        private Dictionary<int, Sticker> getAllStickers()
        {
            Dictionary<int, Sticker> stickers = new Dictionary<int, Sticker>();
            SqlCommand command = new SqlCommand(SELECT_ALL_STICKERS, connection);
            command.Parameters.AddWithValue("albumID", albumID);

            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();

                while (dr.Read())
                {
                    int ID = Convert.ToInt32(dr["ID"].ToString());
                    string name = dr["name"].ToString();
                    int number = Convert.ToInt32(dr["number"].ToString());
                    int duplicates = 0;

                    Sticker sticker = new Sticker(ID, name, number, albumID, duplicates);
                    if(!stickers.ContainsKey(sticker.number))
                        stickers.Add(sticker.number, sticker);
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

            ViewState["allStickers"] = stickers;
            return stickers;
        }

        void BindListView()
        {
            stickersCollected = getStickersCollected();
            stickersAll = getAllStickers();

            for (int i = 0; i < stickersAll.Count; i++)
            {
                Sticker s = stickersAll[i];
                if (stickersCollected.ContainsKey(s.number))
                {
                    stickersAll.Remove(s.number);
                    stickersAll.Add(s.number, stickersCollected[s.number]);
                }
            }

            lvMyCollections.DataSource = stickersAll.Values;
            lvMyCollections.DataBind();     
        }

        protected void lvMyCollections_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            //set current page startindex, max rows and rebind to false
            lvDataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

            //rebind List View
            BindListView();
        }



        //nadolu se eventi za kopceto stickerButton 


        protected void stickerButton_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            int stickerNumber = Convert.ToInt32(button.Text);

            List<Sticker> selectedStickers;
            if (ViewState["selectedStickers"] == null)
                selectedStickers = new List<Sticker>();
            else
                selectedStickers = (List<Sticker>)ViewState["selectedStickers"];

            Dictionary<int, Sticker> allStickers = (Dictionary<int, Sticker>)ViewState["allStickers"];
            selectedStickers.Add(allStickers[stickerNumber]);

            ViewState["selectedStickers"] = selectedStickers;

            lbSelected.DataSource = selectedStickers;
            lbSelected.DataBind();

            updateListUsersWithDuplicates(selectedStickers);
            updateListUsersMisssingStickers(selectedStickers);


            button.CssClass = Sticker.CSS_CLASS_STICKER_CHECKED;
        }

        private void updateListSelectedStickers()
        {
            ViewState["selectedStickers"] = selectedStickers;

            lbSelected.DataSource = selectedStickers;
            lbSelected.DataBind();
        }

        private void updateListUsersWithDuplicates(List<Sticker> selectedStickers)
        {
            List<User> users = new List<User>();

            string selectedStickersString = "";
            foreach(Sticker s in selectedStickers)
            {
                selectedStickersString += s.ID + ", ";
            }
            selectedStickersString = selectedStickersString.Substring(0, selectedStickersString.Length - 2);
            
            //ovoj sql treba da se smeni
            string SELECT_USERS_WITH_DUPLICATES = SELECT_USERS_WITH_DUPLICATES = "select * from users where ID in(select distinct userID from stickerCollections where duplicates > 1 and stickerID in (" + selectedStickersString + "))";
            
            SqlCommand command = new SqlCommand(SELECT_USERS_WITH_DUPLICATES, connection);
            //command.Parameters.AddWithValue("stickersIDs", selectedStickersString);
            
            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();

                while (dr.Read())
                {
                    User user = new User();
                    user.ID = Convert.ToInt32(dr["ID"].ToString());
                    user.firstName = dr["firstName"].ToString();
                    user.lastName = dr["lastName"].ToString();
                    user.location = dr["location"].ToString();
                    user.password = dr["password"].ToString();
                    users.Add(user);
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

            lbUsersDuplicates.DataSource = users;
            lbUsersDuplicates.DataBind();
        }

        private void updateListUsersMisssingStickers(List<Sticker> selectedStickers)
        { 
            List<User> users = new List<User>();
            string selectedStickersString = "";
            foreach (Sticker s in selectedStickers)
            {
                selectedStickersString += s.ID + ", ";
            }
            selectedStickersString = selectedStickersString.Substring(0, selectedStickersString.Length - 2);

            string SELECT_USERS_MISSING_STICKERS = "select * from users where ID not in(select userID from stickerCollections where stickerID in (" + selectedStickersString + "))";
            SqlCommand command = new SqlCommand(SELECT_USERS_MISSING_STICKERS, connection);

            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();

                while (dr.Read())
                {
                    User user = new User();
                    user.ID = Convert.ToInt32(dr["ID"].ToString());
                    user.firstName = dr["firstName"].ToString();
                    user.lastName = dr["lastName"].ToString();
                    user.location = dr["location"].ToString();
                    user.password = dr["password"].ToString();
                    users.Add(user);
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

            lbUsersMissingStickers.DataSource = users;
            lbUsersMissingStickers.DataBind();
        }


        //nadolu se eventi za kopcinjata collect i lost stickers

        
        protected void btnCollect_Click(object sender, EventArgs e)
        {
            List<Sticker> selectedStickers = (List<Sticker>)ViewState["selectedStickers"];
            foreach (Sticker s in selectedStickers)
            {
                int newDuplicates = s.duplicates + 1;

                SqlCommand commandDelete = new SqlCommand(DELETE_STICKER_COLLECTION, connection);
                commandDelete.Parameters.AddWithValue("userID", userID);
                commandDelete.Parameters.AddWithValue("stickerID", s.ID);

                SqlCommand commandInsert = new SqlCommand(INSERT_STICKER_COLLECTION, connection);
                commandInsert.Parameters.AddWithValue("stickerID", s.ID);
                commandInsert.Parameters.AddWithValue("duplicates", newDuplicates);
                commandInsert.Parameters.AddWithValue("userID", userID);

                executeCommand(commandDelete);
                executeCommand(commandInsert);
            }

            ViewState["selectedStickers"] = null;
            lbSelected.Items.Clear();
            BindListView();
        }



        protected void btnLose_Click(object sender, EventArgs e)
        {
            List<Sticker> selectedStickers = (List<Sticker>)ViewState["selectedStickers"];
            foreach (Sticker s in selectedStickers)
            {
                int newDuplicates = s.duplicates - 1;

                SqlCommand command;
                if (newDuplicates > -1)
                {
                    command = new SqlCommand(UPDATE_STICKER_DUPLICATES, connection);
                    command.Parameters.AddWithValue("stickerID", s.ID);
                    command.Parameters.AddWithValue("duplicates", newDuplicates);
                    command.Parameters.AddWithValue("userID", userID);

                    executeCommand(command);
                }
            }

            ViewState["selectedStickers"] = null;
            lbSelected.Items.Clear();
            BindListView();
        }

        private void executeCommand(SqlCommand command)
        {
            try
            {
                connection.Open();
                command.ExecuteNonQuery();
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
    }
}