using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;

namespace WebTestApplication2.FileUpload
{
    public partial class jsFileUploadtest : System.Web.UI.Page
    {
        public int a;
        protected void Page_Load(object sender, EventArgs e)
        {
            a = 5;
            Image1.ImageUrl = "~/FileUpload/Upload/201606141107311.jpg";
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
            for (int i = 0; i < uploadFiles.Count; i++)
            {
                HttpPostedFile postedFile = uploadFiles[i];
                try
                {
                    if (postedFile.ContentLength > 0)
                    {
                        string extName = System.IO.Path.GetExtension(postedFile.FileName).ToLower();
                        if (extName != ".jpg" && extName != ".jpeg" && extName != ".gif" && extName != ".png")
                        {
                            Label1.Text = "只能上传jpg，gif，png文件";
                            return;
                        }
                        //DateTime dt = new DateTime();
                        string newFilename = DateTime.Now.ToString("yyyyMMddhhmmss") + i + extName;
                        //Response.Write(filepath + newFilename + "<br/>");
                        Response.Write(filepath + postedFile.FileName + "<br/>");
                        //Label1.Text += "文件 #" + (i + 1) + "：" + System.IO.Path.GetFileName(postedFile.FileName) + "〈br/>";
                        /*
                        string newfilepath = filepath + newFilename;
                        postedFile.SaveAs(newfilepath);
                        test t = new test();
                        bool succeed = t.AddPic(newfilepath);
                        if (succeed) Label1.Text = "上传成功";
                        */
                    }
                }
                catch (Exception Ex)
                {
                    throw Ex;
                    //Label1.Text += "发生错误： " + Ex.Message;
                }
            }
        }
    }
}