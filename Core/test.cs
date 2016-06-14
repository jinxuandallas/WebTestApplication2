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

        public bool AddPic(string filename)
        {
            //只能服务器使用相对路径，使用绝对路径客户端打不开（调用的是客户端文件）
            string filepath= "~/FileUpload/Upload/"+filename;
            string sql = "insert 图片(图片地址) values(@filepath)";
            int rtn = ExecuteSql(sql, new SqlParameter[] { new SqlParameter("@filepath", filepath) });
            if (rtn == 1)
                return true;
            return false;
        }
    }
}
