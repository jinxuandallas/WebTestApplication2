using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTestApplication2.FileUpload
{
    public partial class FileUploadTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.FileUpload fu = new System.Web.UI.WebControls.FileUpload();
            Label l = new Label();
            l.Text = "tt";
            form1.Controls.Add(fu);
            form1.Controls.Add(l);
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.FileUpload fu = new System.Web.UI.WebControls.FileUpload();
            Label l = new Label();
            l.Text = "tt";
            form1.Controls.Add(fu);
            form1.Controls.Add(l);
        }
    }
}