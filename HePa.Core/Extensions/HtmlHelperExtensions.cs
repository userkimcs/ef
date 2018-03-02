using HePa.Core.QueryHelpers;
using System;
using System.Collections.Generic;
using System.Text;
using System.Web.Mvc;
using System.Linq;
using System.Web.Mvc.Html;
namespace HePa.Core.Extensions
{
    public static class HtmlHelperExtensions
    {
        /// <summary>
        /// AlertBox is based on Bootstrap Alert - see more at: http://getbootstrap.com/components/#alerts
        /// </summary>
        /// <param name="helper">HtmlHepler</param>
        /// <param name="type">Must call from Const.cs of HePa.Core.Extensions, use AlertBoxType.</param>
        /// <param name="HTMLmessage">String input, HTML code is allowed.</param>
        /// <param name="dismissible">The dismiss button is on/true or off/false.</param>
        /// <returns></returns>
        public static MvcHtmlString AlertBox(this HtmlHelper helper, string type, string HTMLmessage, bool dismissible = false)
        {
            // return nothing if no message input
            if (String.IsNullOrEmpty(HTMLmessage) || String.IsNullOrWhiteSpace(HTMLmessage))
            {
                return null;
            }

            StringBuilder html = new StringBuilder("<div class='alert @type @dismissible' role='alert'><p>@message</p></div>");
            html.Replace("@type", type);
            if (dismissible == false)
            {
                html.Replace("@dismissible", null);
                html.Replace("@message", HTMLmessage);
            }
            else
            {
                string dismissBtn = "<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>";
                html.Replace("@dismissible", "alert-dismissible");
                html.Replace("@message", dismissBtn + HTMLmessage);
            }

            return new MvcHtmlString(html.ToString());
        }

        /// <summary>
        /// method display tree 
        /// </summary>
        /// <param name="helper"></param>
        /// <param name="elements">list of nodes</param>
        /// <param name="ActionName"></param>
        /// <param name="ControllerName"></param>
        /// <param name="htmlAttributes"></param>
        /// <param name="html"></param>
        /// <returns></returns>
        public static MvcHtmlString DisplayTreeFor(this HtmlHelper helper, IEnumerable<GrammarElement> elements, 
            string ActionName, string ControllerName, 
            object htmlAttributes, StringBuilder html)
        {
            // StringBuilder html = new StringBuilder();
            html.Append("<ul>");
            foreach (var element in elements)
            {
                html.Append("<li>");
                html.Append(helper.ActionLink(element.Title, ActionName, ControllerName, 
                                                new { alias = element.Alias}, null));
                // recursive call 
                var children = elements.Where(e => e.Parent == element).OrderBy(e => e.Index); ;
                if (children.Count() > 0)
                {
                    DisplayTreeFor(helper, children, ActionName, ControllerName, htmlAttributes, html);
                }
                html.Append("</li>");
            }
            html.Append("</ul>");
            return new MvcHtmlString(html.ToString());
        }
    }
}
