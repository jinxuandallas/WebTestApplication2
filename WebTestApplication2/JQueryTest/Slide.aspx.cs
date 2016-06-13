using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTestApplication2.JQueryTest
{
    public partial class Slide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int[] a = { 1, 2, 3, 4, 5, 6 };
            Repeater1.DataSource = a;
            Repeater1.DataBind();
            Repeater2.DataSource = a;
            Repeater2.DataBind();
        }
    }
}