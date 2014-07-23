using System;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["StickersDbConnection"].ConnectionString;

                string sqlString = "select a.name Album, s.name Name, s.number Num from dbo.album a, dbo.sticker s where s.albumID = a.ID";
                SqlCommand command = new SqlCommand(sqlString, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();

                try
                {
                    connection.Open();
                    adapter.Fill(ds, "Stickers");
                    gvStickers.DataSource = ds;
                    gvStickers.DataBind();
                }
                catch(Exception err)
                {
                    lblMessage.Text = err.Message;
                }
                finally
                {
                    connection.Close();
                }

                tbUsername.Attributes.Add("onfocus", "if(this.value.toLowerCase() == 'username') this.value = '';");
                tbPassword.Attributes.Add("onfocus", "this.value = '';");
                tbPassword.Attributes["type"] = "password";
            }
            
        }
        



        /*
        protected void importStickers(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = "Data Source=194.149.135.68,64314;Initial Catalog=dbpictransfer;Persist Security Info=True;User ID=teamPic;Password=T3@mP!c";

            try
            {
                
                using (StreamReader sr = new StreamReader("C:\\Users\\agasteovski.TRICODE\\Desktop\\stickers.txt"))
                {
                    int i = 0;
                    int stickerNum = 0;
                    string stickerName = "";
                    string playerName = "";
                    string country = "";
                    while(sr.Peek() >= 0)
                    {
                        String line = sr.ReadLine();
                        if (i % 4 == 0)
                        {
                            stickerNum = Convert.ToInt32(line);
                        }
                        else if (i % 4 == 1)
                        {
                            playerName = line;
                        }
                        else if (i % 4 == 2)
                        {
                            country = line;
                        }
                        else
                        {
                            stickerName = String.Format("{0, -20}{1}", country, playerName);
                            System.Diagnostics.Debug.WriteLine("Number: " + stickerNum + "\tName: " + stickerName);
                            
                            SqlCommand command = new SqlCommand();
                            command.Connection = connection;
                            command.CommandText = "insert into dbo.sticker (albumID, number, name) values(2, @number, @name)";
                            command.Parameters.AddWithValue("number", stickerNum);
                            command.Parameters.AddWithValue("name", stickerName);

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
                        i++;
                    }     
                }
            }
            catch (Exception err)
            {
                Console.WriteLine("The file could not be read:");
                Console.WriteLine(err.Message);
            }
        }*/
    }
}