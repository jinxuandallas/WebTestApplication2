using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebTestApplication2.JQueryTest
{
    public partial class Repeater : System.Web.UI.Page
    {
        public int[] a = { 1, 2, 3, 4, 5 };
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("Num");
            for (int i=1;i<6;i++)
            {
                DataRow dr = dt.NewRow();
                dr[0] = i;
                dr[1] = i * i;
                dt.Rows.Add(dr);
            }
            */
            Repeater1.DataSource = a;
            Repeater1.DataBind();
            Response.Write(a.Length.ToString());
        }
    }
}