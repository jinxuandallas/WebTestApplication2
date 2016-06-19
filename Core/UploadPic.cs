using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.IO;
using System.Data.SqlClient;
using System.Data;

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

        public string ExamFile(HttpFileCollection uploadFiles)
        {
            int filesSize = 0;
            test t = new test();
            DataSet ds = t.GetPic();
            //foreach (DataRow dr in ds.Tables[0].Rows)
            System.IO.FileInfo fi;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                fi = new FileInfo(HttpContext.Current.Server.MapPath(dr[0].ToString()));
                filesSize += int.Parse(fi.Length.ToString());
            }

                    
            string extName;
            //此处只能使用for不能使用foreach因为uf可能为空，将导致异常
            //foreach(HttpPostedFile uf in uploadFiles)
            for (int i=0;i<uploadFiles.Count;i++)
            {
                if (uploadFiles[i].ContentLength > 0)
                {
                    extName = System.IO.Path.GetExtension(uploadFiles[i].FileName).ToLower();
                    if (extName != ".jpg" && extName != ".jpeg" && extName != ".gif" && extName != ".png")
                        return "只能上传jpg，gif，png文件";
                    if (uploadFiles[i].ContentLength > 2097152)
                        return "单个文件不能超过2M";
                    filesSize += uploadFiles[i].ContentLength;
                    if (filesSize > 5242880)
                        return "总文件不能超过5M";
                }
            }
            return "文件检查成功";
        }
    }
}
