

using System;
namespace HePa.Core.Helpers
{
    public class HtmlExtensions
    {
        public static string Submit(string Value, string CssClass)
        {
            return String.Format("<input type = \"submit\" value = \"{0}\" class = \"{1}\"/>", Value, CssClass);
        }

        public static string Submit()
        {
            return "<input type=\"submit\" class=\"dASButton\" value=\"Submit\" />";
        }
    }
}
