using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTestApplication2.FileUpload
{
    public partial class FileUploadRepeaterTest : System.Web.UI.Page
    {
        public int[] a = { 1, 2, 3, 4, 5 };
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                Repeater1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filepath = Server.MapPath("Upload") + "\\";
            HttpFileCollection uploadFiles = Request.Files;
            if (!System.IO.Directory.Exists(filepath))//判断文件夹是否已经存在
            {
                System.IO.Directory.CreateDirectory(filepath);//创建文件夹
            }
            for (int i = 0; i<uploadFiles.Count; i++)
            { 
                HttpPostedFile postedFile = uploadFiles[i];
                try
                {
                    if (postedFile.ContentLength > 0)
                    {
                        Response.Write(filepath+postedFile.FileName + "<br/>");
                        //Label1.Text += "文件 #" + (i + 1) + "：" + System.IO.Path.GetFileName(postedFile.FileName) + "〈br/>";
                        //postedFile.SaveAs(filepath + System.IO.Path.GetFileName(postedFile.FileName));
                    }
                }
                catch (Exception Ex)
                {
                    throw Ex;
                    //Label1.Text += "发生错误： " + Ex.Message;
                }
            }

            /*
            for (int i=0;i<5;i++)
            {
               /* foreach (RepeaterItem rep in Repeater1.Items)
                    foreach (Control con in rep.Controls)
                        Response.Write(con.ID + "<br/>");
                        
                Response.Write(((TextBox)Repeater1.Items[i].FindControl("TextBox")).Text+"<br/>");
                Response.Write(((System.Web.UI.WebControls.FileUpload)Repeater1.Items[i].FindControl("FileUpload")).FileName + "<br/>");
            */
            
        }
    }
}