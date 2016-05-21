using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;

namespace WebTestApplication2
{
    public partial class Web3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            test t = new test();
            //证明select语句返回-1
            Response.Write( t.testRetunCount());
        }
    }
}