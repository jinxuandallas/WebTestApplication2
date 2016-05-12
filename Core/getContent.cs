using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Core
{
    public class GetContent:Database
    {
        public GetContent()
        {

        }
        public string getContent()
        {
            string content;
            SqlDataReader dr=GetDataReader("select 内容 from 内容 where [ID]=@ID", new SqlParameter[] { new SqlParameter("@ID", 3) });
            dr.Read();
            content = dr[0].ToString();
            return content;
        }
    }
}
