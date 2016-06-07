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
            if(IsPostBack)

            for (int i=1; i < 4; i++)
            {
                System.Web.UI.WebControls.FileUpload fu = new System.Web.UI.WebControls.FileUpload();
                fu=Panel1.FindControl("")
                Label l = new Label();
                l.Text = i.ToString();
                Button btn = new Button();
                btn.ID = "btn" + i.ToString();
                btn.Text = "B" + i.ToString();
                btn.Click += Btn_Click;
                Panel1.Controls.Add(fu);
                Panel1.Controls.Add(l);
                Panel1.Controls.Add(btn);
                Panel1.Controls.Add(new LiteralControl("<br />"));
            }
            else
            
        }

        private void Btn_Click(object sender, EventArgs e)
        {
            Response.Write(((Button)sender).ID);
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.FileUpload fu = new System.Web.UI.WebControls.FileUpload();
            Label l = new Label();
            l.Text = "yy";
            Panel1.Controls.Add(fu);
            Panel1.Controls.Add(l);
        }
    }
}