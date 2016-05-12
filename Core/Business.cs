using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Core
{
    public class Business:Database
    {
        public Business()
        {

        }
        public string CreateCompany(string companyName,string introduction,string businessScope)
        {
            string guid = System.Guid.NewGuid().ToString();
            Insert("insert into [企业](ID,企业名称,企业简介,经营范围) values (@ID,@企业名称,@企业简介,@经营范围)", new SqlParameter[] { new SqlParameter("@ID",guid),
            new SqlParameter("@企业名称",companyName),
            new SqlParameter("@企业简介",introduction),
            new SqlParameter("@经营范围",businessScope)
            });
            return guid;
        }

    }
}
