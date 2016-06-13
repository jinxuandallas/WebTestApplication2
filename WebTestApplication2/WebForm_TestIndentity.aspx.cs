using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;

namespace WebTestApplication2
{
    public partial class WebForm_TestIndentity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            test ts = new test();
            //经测试失败，不能返回数据库中新插入的Guid，改用程序中生成Guid再插入的方法
            //Guid gg= ts.testReturnIdentity(TextBox1.Text);
            //Response.Write(gg.ToString());
        }
    }
}