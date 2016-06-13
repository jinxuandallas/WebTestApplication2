using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Core
{
    public class test:Database
    {
        public test()
        {

        }
        public int testReturnCount()
        {
            string sql = "select * from 用户";
            int rtn = ExecuteSql(sql);
            return rtn;
        }

        /// <summary>
        /// 经测试失败，不能返回数据库中新插入的Guid，改用程序中生成Guid再插入的方法
        /// </summary>
        /// <param name="companyName"></param>
        /// <returns></returns>
        public Guid testReturnIdentity(string companyName)
        {
            string sql = "insert into [企业] (企业名称) values(@companyname)";
            Guid gg= Guid.Parse(InsertReturnGUID(sql, new SqlParameter[] { new SqlParameter("@companyname", companyName) }));
            return gg;
        }
    }
}
