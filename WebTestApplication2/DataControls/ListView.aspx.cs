using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTestApplication2.DataControls
{
    public partial class ListView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write((((Button)sender).Parent.FindControl("IDLabel") as Label).Text);
            Response.Write("<br/>" + ListView1.SelectedValue);
            Response.Write("<br/>" + ListView1.SelectedIndex);
        }
    }
}