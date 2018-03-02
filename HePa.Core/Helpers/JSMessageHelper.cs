
namespace HePa.Core.Helpers
{
    public class JSMessageHelper
    {
        public static string Alert(string message)
        {
            return "<script>alert('" + message + "')</script>";
        }
    }
}
