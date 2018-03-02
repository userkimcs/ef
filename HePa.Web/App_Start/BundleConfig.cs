using System.Web;
using System.Web.Optimization;

namespace HePa.Web
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
#if DEBUG
            bundles.UseCdn = true;   // disable CDN support
            BundleTable.EnableOptimizations = false; // enable minification in debug/release
#else
            bundles.UseCdn = true;   // enable CDN support
            BundleTable.EnableOptimizations = true; // enable minification in debug/release
#endif


            /*-----------------------------------*/
            /* Script - For common libs */
            /*-----------------------------------*/
            // jQuery js
            bundles.Add(
                new ScriptBundle("~/dist/jquery-js", "//cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js")
                .Include("~/dist/libs/jquery/jquery-{version}.js")
            );
            // jQuery ui js
            bundles.Add(
                new ScriptBundle("~/dist/jquery-ui-js")
                .Include("~/dist/libs/jquery.ui/jquery-ui.min.js")
            );
            // Modernizr js
            bundles.Add(
                new ScriptBundle("~/dist/modernizr-js", "//cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js")
                .Include("~/dist/libs/modernizr/modernizr-{version}.js")
            );
            // Bootstrap js
            bundles.Add(
                new ScriptBundle("~/dist/bootstrap-js", "//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js")
                .Include("~/dist/libs/bootstrap/js/bootstrap-{version}.js")
            );
            // Respond js
            bundles.Add(
                new ScriptBundle("~/dist/respond-js", "//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js")
                .Include("~/dist/libs/respond/respond-{version}.js")
            );
            /*-----------------------------------*/
            /* Script - For uncommon libs */
            /*-----------------------------------*/
            // jQuery Validate js
            bundles.Add(
                new ScriptBundle("~/dist/jqueryval", "//cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js")
                .Include("~/dist/libs/jqueryval/jquery.validate-{version}.js")
            );
            // Microsoft jQuery plugin that unobtrusively sets up jQuery.Validation
            bundles.Add(
                new ScriptBundle("~/dist/jquery.validate.unobtrusive", "//ajax.aspnetcdn.com/ajax/mvc/5.2.3/jquery.validate.unobtrusive.min.js")
                .Include("~/dist/libs/jquery.validate.unobtrusive/jquery.validate.unobtrusive-{version}.js")
            );
            // Microsoft jQuery plugin that unobtrusively sets up jQuery Ajax
            bundles.Add(
                new ScriptBundle("~/dist/jquery.unobtrusive-ajax")
                .Include(@"~/dist/libs/jquery.unobtrusive-ajax/jquery.unobtrusive-ajax-{version}.js")
            );
            // D:\Work\hepa-.net-mvc\HePa.Web\dist\libs\jquery.unobtrusive-ajax\jquery.unobtrusive-ajax-3.2.3.js
            // Bootstrap progressbar js - http://www.minddust.com/project/bootstrap-progressbar/
            bundles.Add(new ScriptBundle("~/dist/bsProgressbar-js").Include(
                "~/dist/libs/bootstrap-progressbar/bootstrap-progressbar-{version}.js"));
            // Sound manager 2 js
            bundles.Add(
                new ScriptBundle("~/dist/soundMng-js", "//cdnjs.cloudflare.com/ajax/libs/soundmanager2/2.97a.20150601/script/soundmanager2-nodebug-jsmin.js")
                .Include("~/dist/libs/soundmanager2/soundmanager-2.js")
            );
            bundles.Add(new ScriptBundle("~/dist/soundMng-mp3Btn-js").Include(
                "~/dist/libs/soundmanager2/mp3-player-button.js"));
            // iCheck js - https://github.com/fronteed/iCheck
            bundles.Add(
                new ScriptBundle("~/dist/icheck-js", "//cdnjs.cloudflare.com/ajax/libs/iCheck/1.0.1/icheck.min.js")
                .Include("~/dist/libs/icheck/icheck-{version}.js")
            );
            // Perfect scrollbar js - https://github.com/noraesae/perfect-scrollbar
            bundles.Add(
                new ScriptBundle("~/dist/perfect-scrollbar-js", "//cdnjs.cloudflare.com/ajax/libs/jquery.perfect-scrollbar/0.6.3/js/min/perfect-scrollbar.jquery.min.js")
                .Include("~/dist/libs/perfect-scrollbar/js/perfect-scrollbar.jquery-{version}.js")
            );
            // Input mask js - http://digitalbush.com/projects/masked-input-plugin
            bundles.Add(
                new ScriptBundle("~/dist/input-mask-js", "//cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js")
                .Include("~/dist/libs/input-mask/input-mask-{version}.js")
            );
            // Export excel js - https://github.com/rainabba/jquery-table2excel
            bundles.Add(new ScriptBundle("~/dist/export-excel-js").Include(
                "~/dist/libs/jquery.table2excel/jquery.table2excel.min.js"));
            // rangeslider.js - https://github.com/andreruffert/rangeslider.js
            bundles.Add(new ScriptBundle("~/dist/range-slide-js").Include(
                "~/dist/libs/rangeslider.js-2.0.2/rangeslider.js"));

            /*-----------------------------------*/
            /* Script - For Hepa custom libs */
            /*-----------------------------------*/
            bundles.Add(new ScriptBundle("~/dist/js-site").Include(
                "~/dist/hp/js/hepa-libs.js"));

            /*-----------------------------------*/
            /* Script - For specific page */
            /*-----------------------------------*/
            // Script - For Word page
            bundles.Add(new ScriptBundle("~/dist/js-word").Include(
                "~/dist/hp/js/word.js"));
            // Script - For Homepage
            bundles.Add(new ScriptBundle("~/dist/js-home").Include(
                "~/dist/hp/js/home-page.js"));
            // Script - For Payment Page
            bundles.Add(new ScriptBundle("~/dist/js-payment").Include(
                "~/dist/hp/js/payment-page.js"));
            // Script - For Learn Word Page
            bundles.Add(new ScriptBundle("~/dist/js-learn-word-guest").Include(
                "~/dist/hp/js/learn-word-page.js"));
            // Script

            /*-----------------------------------*/
            /* Style - For common libs */
            /*-----------------------------------*/
            // Bootstrap css
            bundles.Add(
                new StyleBundle("~/dist/bootstrap-css", "//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css")
                .Include("~/dist/libs/bootstrap/css/bootstrap-{version}.css")
            );
            // Font Awesome css - http://fontawesome.io
            bundles.Add(
                new StyleBundle("~/dist/font-awesome-css", "//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css")
                .Include("~/dist/libs/font-awesome/css/font-awesome-{version}.css")
            );
            /*-----------------------------------*/
            /* Style - For uncommon libs */
            /*-----------------------------------*/
            // iCheck - https://github.com/fronteed/iCheck
            bundles.Add(
                new StyleBundle("~/dist/icheck-css", "//cdnjs.cloudflare.com/ajax/libs/iCheck/1.0.1/skins/flat/red.css")
                .Include("~/dist/libs/icheck/skins/flat/red.css")
            );
            // Perfect scrollbar - https://github.com/noraesae/perfect-scrollbar
            bundles.Add(
                new StyleBundle("~/dist/perfect-scrollbar-css", "//cdnjs.cloudflare.com/ajax/libs/jquery.perfect-scrollbar/0.6.3/css/perfect-scrollbar.min.css")
                .Include("~/dist/libs/perfect-scrollbar/css/perfect-scrollbar.css")
            );
            // Bootstrap social - http://lipis.github.io/bootstrap-social
            bundles.Add(
                new StyleBundle("~/dist/bootstrap-social", "//cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.9.1/bootstrap-social.min.css")
                .Include("~/dist/libs/bootstrap-social/bootstrap-social.css")
            );
            // Range slider - 
            bundles.Add(
               new StyleBundle("~/dist/range-slide-css")
               .Include("~/dist/libs/rangeslider.js-2.0.2/rangeslider.css")
            );

            /*-----------------------------------*/
            /* Style - For all page */
            /*-----------------------------------*/
            bundles.Add(new StyleBundle("~/dist/css-all").Include(
                "~/dist/hp/css/theme.css",
                "~/dist/hp/css/style.css"));
            /*-----------------------------------*/
            /* Style - For specific page */
            /*-----------------------------------*/
            // Style - For Homepage Layout v1.0
            bundles.Add(new StyleBundle("~/dist/css-home-layout-v11").Include(
                "~/dist/hp/css/home-page-layout-v1.1.css"));
            // Style - For Homepage v1.0
            bundles.Add(new StyleBundle("~/dist/css-home").Include(
                "~/dist/hp/css/home-page-v1.1.css"));
            // Style - For Homepage v1.1
            bundles.Add(new StyleBundle("~/dist/css-home-v1.1").Include(
                "~/dist/hp/css/home-page-v1.1.css"));
            // Style - For About Page v1.1
            bundles.Add(new StyleBundle("~/dist/css-about-v1.1").Include(
                "~/dist/hp/css/about-v1.1.css"));
            // Style - For Lo Trinh Hoc
            bundles.Add(new StyleBundle("~/dist/css-lo-trinh-hoc").Include(
                "~/dist/hp/css/lo-trinh-hoc.css"));
            // Style - For Simple page (ForgotPass, FAQ, Payment, ...)
            bundles.Add(new StyleBundle("~/dist/css-simple").Include(
                "~/dist/hp/css/simple-page.css"));
            // Style - For Team page
            bundles.Add(new StyleBundle("~/dist/css-team").Include(
                "~/dist/hp/css/team.css"));
            // Style - For Payment page
            bundles.Add(new StyleBundle("~/dist/css-payment").Include(
                "~/dist/hp/css/payment-page.css"));
            // Style - For learn word page
            bundles.Add(new StyleBundle("~/dist/css-learn-word").Include(
                "~/dist/hp/css/learn-word.css"));
            // Style - For user pages
            bundles.Add(new StyleBundle("~/dist/css-user").Include(
                "~/dist/hp/css/user.css"));
            // Style - For Galaxy page
            bundles.Add(new StyleBundle("~/dist/galaxy-gate").Include(
                "~/dist/hp/css/galaxy-gate.css"));
            // Style - For word info (starter/mover/flyer) page
            bundles.Add(new StyleBundle("~/dist/word-class-info").Include(
                "~/dist/hp/css/word-class-info.css"));
        }
    }
}