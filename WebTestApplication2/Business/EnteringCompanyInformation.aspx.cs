using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;

namespace WebTestApplication2.Business
{
    public partial class EnteringCompanyInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Core.Business bu = new Core.Business();
            string guid=bu.CreateCompany(CompanyName.Text, Introduction.Text, BusinessScope.Text);
            Response.Write(guid);
        }
    }
}