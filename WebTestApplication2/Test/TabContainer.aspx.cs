using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;
using Core;

namespace WebTestApplication2.Test
{
    public partial class TabContainer : System.Web.UI.Page
    {
        protected CommentClass commentc;
        protected void Page_Load(object sender, EventArgs e)
        {
            //测试用
            Session["CompanyID"] = System.Configuration.ConfigurationManager.AppSettings["companyID"];

            commentc = new CommentClass();
            ListViewResult.DataSource = commentc.GetComments(Guid.Parse(Session["CompanyID"].ToString()));
            ListViewResult.DataBind();
        }

        protected void TabContainer1_ActiveTabChanged(object sender, EventArgs e)
        {
        //    ListViewResult.DataSource = commentc.GetComments(Guid.Parse(Session["CompanyID"].ToString()));
        //    ListViewResult.DataBind();
        //    string strScript= @"<script>$(function () {
               
        //    $("".raty"").each(function () {
        //        var ratyValue = $(this).parent().find(""input[type=hidden]"").val();
        //        $(this).raty({
        //        path: ""../JQueryTest/img/"",
        //            readOnly: true,
        //            start: ratyValue
        //        });
        //})

        //})</script>";
        //    ClientScript.RegisterClientScriptBlock(this.GetType(),"raty",strScript);
        }
    }
}