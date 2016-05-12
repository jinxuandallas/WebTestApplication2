using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;

namespace WebTestApplication2.Password
{
    public partial class salt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string salt=null,password;
            MyUser mu = new MyUser();
            password=mu.TransformPassword(TextBox1.Text,ref salt);
            Response.Write(password + "<br/>" + salt);
        }
    }
}