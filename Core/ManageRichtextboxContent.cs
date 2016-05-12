using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class ManageRichtextboxContent:Database
    {
        public ManageRichtextboxContent()
        {

        }
        public bool SavetoDatabase(string content)
        {
            //System.Data.SqlClient.SqlParameter sq = new System.Data.SqlClient.SqlParameter("@pa", content);
            InsertReturnID("insert into 内容 (内容) values (@content)", new System.Data.SqlClient.SqlParameter[] { 
                new System.Data.SqlClient.SqlParameter("@content", content) 
            });
            return true;
        }
    }


}
