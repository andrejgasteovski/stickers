using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stickers
{
    public partial class StickersCollection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                BindListView();
            }
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
            lvMyCollections.DataSource = SampleData();
            lvMyCollections.DataBind();
        }
        protected void lvMyCollections_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            //set current page startindex, max rows and rebind to false
            lvDataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

            //rebind List View
            BindListView();
        }
    }
}