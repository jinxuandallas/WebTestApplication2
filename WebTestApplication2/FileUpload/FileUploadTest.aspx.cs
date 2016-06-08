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
            int i;
            if(IsPostBack)
            {
                
                for(i=1;i<6;i++)
                {
                    System.Web.UI.WebControls.FileUpload fu =(System.Web.UI.WebControls.FileUpload) Panel1.FindControl("fu_" + i);
                    Button btn = (Button)Panel1.FindControl("btn_" + i);
                    Panel1.Controls.Add(fu);
                    Panel1.Controls.Add(btn);
                    Panel1.Controls.Add(new LiteralControl("<br />"));
                }
                
            }

                /*
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
            */
            else
                for(i=1;i<6;i++)
                {
                    System.Web.UI.WebControls.FileUpload fu = new System.Web.UI.WebControls.FileUpload();
                    fu.ID = "fu_" + i;
                    Button btn = new Button();
                    btn.ID = "btn_" + i.ToString();
                    Panel1.Controls.Add(fu);
                    Panel1.Controls.Add(btn);
                    Panel1.Controls.Add(new LiteralControl("<br />"));
                }
            
        }

        private void Btn_Click(object sender, EventArgs e)
        {
            Response.Write(((Button)sender).ID);
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            Response.Write(FileUpload1.FileName+"<br/>"+TextBox1.Text);
           
            /*
            System.Web.UI.WebControls.FileUpload fu = new System.Web.UI.WebControls.FileUpload();
            Label l = new Label();
            l.Text = "yy";
            Panel1.Controls.Add(fu);
            Panel1.Controls.Add(l);
            */
        }
    }
}