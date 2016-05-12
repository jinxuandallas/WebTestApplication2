using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;

namespace WebTestApplication2.Account
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //用户名文本框获得焦点 
                ScriptManager1.SetFocus(UserName);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("xx");
            
            MyUser mu = new MyUser();
            bool achieve=mu.CreateUser(UserName.Text, Password.Text);
            if (achieve) Response.Write("成功");
            else Response.Write("不成功");
            
             
        }

        protected void UserName_TextChanged(object sender, EventArgs e)
        {
            MyUser mu = new MyUser();
            if (mu.ValidateUserName(UserName.Text))
            {
                Label1.Text = "ok";

            }
            else
            {
                Label1.Text = "no";
                //ScriptManager.RegisterStartupScript(this.UpdatePanel1, UpdatePanel1.GetType(), "", "document.getElementById('UserName').select();", true);
            }
        }
    }
}