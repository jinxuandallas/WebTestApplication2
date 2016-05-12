using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTestApplication2
{
    public partial class Textbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                 Response.Write("输入的是" + Server.HtmlEncode(TextBox1.Text));
                //Response.Write("输入的是" + TextBox1.Text);
            }
            catch (Exception ea)
            {
                Response.Write("xx"+ea.Message);
                //throw (ea);
            }
        }
    }
}