using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace WebTestApplication2.Test
{
    public partial class GetURLTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s= @"<p><img alt=""微笑"" src=""/js/xheditor_emot/default/smile.gif"" />新分析法学</p><p><img alt=""惊讶"" src=""/js/xheditor_emot/default/ohmy.gif"" />fdfdddf<br /></p><p>非等到</p><p><img src=""../Upload/ContentUploadPic/day_160713/201607130901342030.jpg"" alt="""" /><br /></p>";
            Response.Write(s.IndexOf("<img"));
            
            //Response.Write(GetImgUrl(s));
        }

        public static string GetImgUrl(string HTMLStr)
        {
            string str = string.Empty;
            string sPattern = @"^<img\s+[^>]*>";
            Regex r = new Regex(@"<img\s+[^>]*\s*src\s*=\s*([']?)(?<url>\S+)'?[^>]*>",
                    RegexOptions.Compiled);
            Match m = r.Match(HTMLStr.ToLower());
            if (m.Success)
                str = m.Result("${url}");
            return str;
        }
    }
}