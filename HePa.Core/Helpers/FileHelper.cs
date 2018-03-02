using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Helpers
{
    public class FileHelper
    {
        public static string ReadFile(string file)
        {
            var path = System.AppDomain.CurrentDomain.BaseDirectory;
            string text = System.IO.File.ReadAllText(path + file);
            return text;
        }

        public static Task<string> ReadFileAsync(string file)
        {
            return Task.Run(() => ReadFile(file));
        }
    }
}
