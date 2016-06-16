using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;
using System.Data;

namespace WebTestApplication2.FileUpload
{
    public partial class jsFileUploadtest : System.Web.UI.Page
    {
        public int a;
        public DataSet ds;
        protected UploadPic up;
        protected void Page_Load(object sender, EventArgs e)
        {
            InitandBind();

                //ViewState["dataset"] = ds;
            
        }

        protected void InitandBind()
        {
            test t = new test();
            ds = t.GetPic();
            a = 5 - ds.Tables[0].Rows.Count;
            up = new UploadPic();

            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //return;
            //转换要删除的文件名称
            string hv = ";Upload/201606140819362.jpg;Upload/201606140819364.jpg";
            //从Hidden控件获取文件集合
            Response.Write(Hidden1.Value + "<br/>");
            //Tools t = new Tools();
            //List<string> l = t.GetFilename(Hidden1.Value);
            //UploadPic up = new UploadPic();
            List<string> l = up.GetFilename(hv);

            //foreach (string s in l)
            //    Response.Write(Server.MapPath(s)+"<br/>");
            
            //删除图片文件
            up.DelPicFile(l);
            //删除图片在数据库中的记录
            up.DelDbPic(l);

            //Response.Write(Repeater1.Items[0].FindControl(");
            /*
            foreach (RepeaterItem item in Repeater1.Items)
                Response.Write((item.FindControl("img") as Image).ImageUrl+"<br/>");
                */
            string filepath = Server.MapPath("Upload") + "\\";
            HttpFileCollection uploadFiles = Request.Files;
            if (!System.IO.Directory.Exists(filepath))//判断文件夹是否已经存在
            {
                System.IO.Directory.CreateDirectory(filepath);//创建文件夹
            }

            string examResult = up.ExamFile(Request.Files);//检查文件大小,类型是否符合规定

            if (examResult!= "文件检查成功")
            {
                Label1.Text = examResult;
                return;
            }
            for (int i = 0; i < uploadFiles.Count; i++)
            {
                HttpPostedFile postedFile = uploadFiles[i];
                try
                {
                    if (postedFile.ContentLength > 0)
                    {
                        /*
                        string extName = System.IO.Path.GetExtension(postedFile.FileName).ToLower();
                        if (extName != ".jpg" && extName != ".jpeg" && extName != ".gif" && extName != ".png")
                        {
                            Label1.Text = "只能上传jpg，gif，png文件";
                            return;
                        }
                        */

                        string extName = System.IO.Path.GetExtension(postedFile.FileName).ToLower();
                        string newFilename = DateTime.Now.ToString("yyyyMMddhhmmss") + i + extName;
                        //Response.Write(filepath + newFilename + "<br/>");
                        //Response.Write(filepath + postedFile.FileName + "<br/>");
                        //Label1.Text += "文件 #" + (i + 1) + "：" + System.IO.Path.GetFileName(postedFile.FileName) + "〈br/>";
                        ///*
                        string newfilepath = filepath + newFilename;
                        postedFile.SaveAs(newfilepath);
                        test t = new test();
                        bool succeed = t.AddPic(newFilename);
                        if (succeed) Label1.Text = "上传成功";
                        //*/
                        InitandBind();
                    }
                }
                catch (Exception Ex)
                {
                    throw Ex;
                    //Label1.Text += "发生错误： " + Ex.Message;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            /*
            ds = (DataSet)ViewState["dataset"];
            string imgurl= ((Image)((System.Web.UI.HtmlControls.HtmlInputButton)sender).Parent.FindControl("img")).ImageUrl;
            //Response.Write(((Image)((Button)sender).Parent.FindControl("img")).ImageUrl+"<br/>");
            //.Delete();
            ds.Tables[0].Rows.Remove(ds.Tables[0].Rows.Find(imgurl));
            ViewState["dataset"] = ds;
            a = 5 - ds.Tables[0].Rows.Count;
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            //Label2.Text = ((Image)((Button)sender).Parent.FindControl("img")).ImageUrl;
            */
        }
    }
}