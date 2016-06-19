using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Tools:Database
    {
        public Tools()
        {

        }

        public List<string> GetFilename(string filenamestring)
        {
            List<string> l = filenamestring.Split(';').ToList<string>();
            for (int i=0;i<l.Count;i++)
            {
                if (string.IsNullOrWhiteSpace(l[i]))
                    l.RemoveAt(i);
            }

            return l;
            //string[] l = filenamestring.Split(';');
            
        }
    }
}
