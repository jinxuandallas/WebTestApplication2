using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTestApplication2.ShowTest
{
    public partial class ShowControlTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('ok')</script>");
            TextBox2.Text = "<script>alert('ok')</script>";
            string a = "xxxxxxxxxxxxxxxxxyyyyyyyyyyyyyyyyddddddddddddxxxxxxxxxxxxxxxxxyyyyyyyyyyyyyyyydddddddddddd";
            Label1.Text = a;
            Literal1.Text = a;
            a += a;
            a += a;
            //a += a;
            TextBox1.Text = a;
        }
    }
}