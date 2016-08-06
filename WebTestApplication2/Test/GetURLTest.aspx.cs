using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;
using System.IO;

namespace WebTestApplication2.Test
{
    public partial class GetURLTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            test t = new test();
            string s = t.GetContent(Guid.Parse("B2297590-F3B1-4C2E-B707-FF3056AF99BF"));
            //string s= @"<p><img alt=""微笑"" src=""/js/xheditor_emot/default/smile.gif"" />新分析法学</p><p><img alt=""惊讶"" src=""/js/xheditor_emot/default/ohmy.gif"" />fdfdddf<br /></p><p>非等到</p><p><img src=""../Upload/ContentUploadPic/day_160713/201607130901342030.jpg"" alt="""" /><br /></p>";

            int start, end;
            string img,src;
            List<string> s2 = new List<string>();

            start = s.IndexOf("<img");
            //end = s.IndexOf(@"/>", start);
            //Response.Write(s.Substring(start+4,end-start-4));
            while(start!=-1)
            {
                end = s.IndexOf("/>", start);
                img = s.Substring(start + 4, end - start - 4) + "<br/>";
                if (img.IndexOf("Upload/ContentUploadPic") != -1)
                {
                    int imgstart, imgend;
                    imgstart = img.IndexOf("src") + 5;
                    imgend = img.IndexOf("\"", imgstart);
                    src = img.Substring(imgstart, imgend - imgstart);
                    Response.Write(src + "<br/>");
                    t.AddList(src, ref s2);
                    Response.Write(s2[0]);


                    string ts = s2[0];
                    ts = ts.Substring(0, ts.LastIndexOf("\\"));
                    if (Directory.GetFiles(ts).Length + Directory.GetDirectories(ts).Length == 0)
                    {
                        Directory.Delete(ts);
                    }

                }
                start = s.IndexOf("<img",end+2);

                

            }


            //List<string> s2=new List<string>();
            //s2.Add("aa");
            //s2[0] = Server.MapPath(src);
            //Response.Write(s2[0]);
            //Response.Write(s.IndexOf("<img"));
            
            //Response.Write(GetImgUrl(s));
        }

        //public static string GetImgUrl(string HTMLStr)
        //{
        //    string str = string.Empty;
        //    string sPattern = @"^<img\s+[^>]*>";
        //    Regex r = new Regex(@"<img\s+[^>]*\s*src\s*=\s*([']?)(?<url>\S+)'?[^>]*>",
        //            RegexOptions.Compiled);
        //    Match m = r.Match(HTMLStr.ToLower());
        //    if (m.Success)
        //        str = m.Result("${url}");
        //    return str;
        //}
    }
}