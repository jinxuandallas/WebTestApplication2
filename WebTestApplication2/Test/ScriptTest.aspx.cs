using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTestApplication2.Test
{
    public partial class ScriptTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "do", @"<script>
            $('#Star').raty({
                path: '../JQueryTest/img/',
                start: 3
            })
        </script> ");
        }

        protected void TabContainer1_ActiveTabChanged(object sender, EventArgs e)
        {
            switch(TabContainer1.ActiveTabIndex)
            {
                case 1:
                    ClientScript.RegisterStartupScript(this.GetType(), "do", "alert('xxx')");
                    break;
                default:
                    break;
            }
        }
    }
}