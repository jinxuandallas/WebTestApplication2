using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WebTestApplication2.SendMail
{
    public partial class SendMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mm = new MailMessage();
            mm.Subject = "Test Message";
            mm.Body = "Hello world!";
            mm.To.Add(new MailAddress("3711175@qq.com", "dallas"));
            
            //关于MailDefinition用法参见MSDN
            //MailDefinition md = new MailDefinition();
            //md.Subject = "Test Message 2";
            //mm=md.CreateMailMessage()
            SmtpClient sc = new SmtpClient();
            sc.Send(mm);
        }
    }
}