using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebTestApplication2.JQueryTest
{
    public partial class SlideRepeater : System.Web.UI.Page
    {
//public ;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("Img");
            for (int i = 1; i < 6; i++)
            {
                DataRow dr = dt.NewRow();
                dr[0] = i;
                dr[1] = i * i;
                dt.Rows.Add(dr);
            }
            
            List<int> b=new List<int>();
            b[0] = 1;
            */
            int[] a = { 1, 2, 3, 4, 5, 6 };
            Repeater1.DataSource = a;
            Repeater1.DataBind();
            Repeater2.DataSource = a;
            Repeater2.DataBind();
        }
    }
}