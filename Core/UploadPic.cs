using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.IO;
using System.Data.SqlClient;

namespace Core
{
    public class UploadPic:Database
    {
        public UploadPic()
        {

        }

        /// <summary>
        /// 将文件集合转换成可以直接删除的文件地址
        /// </summary>
        /// <param name="filenamestring">文件集合用";"区分</param>
        /// <returns>返回一个List泛型值</returns>
        public List<string> GetFilename(string filenamestring)
        {
            List<string> ll = filenamestring.Split(';').ToList<string>();
            List<string> ln=new List<string>();
            for (int i = 0; i < ll.Count; i++)
            {
                if (!string.IsNullOrWhiteSpace(ll[i]))
                    //将客户端地址转换成服务端地址（数据库地址）
                    ln.Add(ll[i].Replace("Upload/", "~/FileUpload/Upload/"));
            }

            return ln;
            //string[] l = filenamestring.Split(';');

        }

        public bool DelPicFile(List<string> ls)
        {
            foreach(string s in ls)
            {
                File.Delete(HttpContext.Current.Server.MapPath(s));
            }
            return true;
        }

        public bool DelDbPic(List<string> ls)
        {
            string sql;
            foreach (string s in ls)
            {
                sql = "delete from [图片] where 图片地址=@picpath ";
                int rtn = ExecuteSql(sql, new SqlParameter[] { new SqlParameter("@picpath", s) });
                if (rtn != 1)
                    return false;
            }
            return true;
        }
    }
}
