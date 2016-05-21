using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTestApplication2
{
    public partial class MultiView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            Response.Write(String.IsNullOrWhiteSpace("")+"<br/>");
            Response.Write(String.IsNullOrWhiteSpace("  ") + "<br/>");
            Response.Write(String.IsNullOrEmpty("") + "<br/>");
            Response.Write(String.IsNullOrEmpty("  ") + "<br/>");
        }
    }
}