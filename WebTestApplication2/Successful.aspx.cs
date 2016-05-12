using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;

namespace WebTestApplication2
{
    public partial class Successful : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //User.Identity.Name只有在用户使用Form验证时才有效，否则无效
            if (!IsPostBack) Response.Write(Request.Cookies[0].Name + "<br/>" + Request.Cookies[0].Value + "<br/>" + User.Identity.Name);
            


        }
    }
}