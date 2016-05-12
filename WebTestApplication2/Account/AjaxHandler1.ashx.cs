using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Core;
namespace WebTestApplication2.Account
{
    /// <summary>
    /// AjaxHandler1 的摘要说明
    /// </summary>
    public class AjaxHandler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string flag = string.Empty;
            string strUsername = context.Request.QueryString[0];
            MyUser mu = new MyUser();
            if (mu.ValidateUserName(strUsername)) flag = "1";
            else flag = "0";
            context.Response.Write(flag);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}