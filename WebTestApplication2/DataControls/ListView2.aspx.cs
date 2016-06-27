using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;

namespace WebTestApplication2.DataControls
{
    public partial class ListView2 : System.Web.UI.Page
    {
        public Tools t;
        protected void Page_Load(object sender, EventArgs e)
        {
            t = new Tools();
        }

        public string tool(string vv)
        {
            return vv + "xx";
        }
    }
}