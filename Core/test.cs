using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class test:Database
    {
        public test()
        {

        }
        public int testRetunCount()
        {
            string sql = "select * from 用户";
            int rtn = ExecuteSql(sql);
            return rtn;
        }
    }
}
