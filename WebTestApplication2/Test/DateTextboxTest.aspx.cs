using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTestApplication2.Test
{
    public partial class DateTextboxTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = "2012/06/10 00:00:00";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            //Response.Write(TextBox1.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(TextBox1.Text);
        }
    }
}