$(document).ready(function () {

    /*-----------------------------------*/
    /*  Load forget password form */
    /*-----------------------------------*/
    $('#forgetpass-form').load('forgetpass-form.html');

    /*-----------------------------------*/
    /*  Switch right form: Login-Register-Go to course  */
    /*-----------------------------------*/
    // Default show Login form
    $('.reg-form').hide();
    $('.welcome-form').hide();
    $('.forget-pass-form').hide();
    // Switch Login -> Register
    $('.btn-show-register').on('click', function (e) {
        $('.reg-form').show("slow");
        $('.welcome-form').hide("slow");
        $('.forget-pass-form').hide("slow");
        $('.login-form').hide("slow");
        e.preventDefault();
    });
    // Switch Register -> Login
    $('.btn-show-login').on('click', function (e) {
        e.preventDefault();
        $('.reg-form').hide("slow");
        $('.welcome-form').hide("slow");
        $('.forget-pass-form').hide("slow");
        $('.login-form').show("slow");
        e.preventDefault();
    });
    //  Switch to forget password form
    $('.btn-show-forgetpass').on('click', function (e) {
        e.preventDefault();
        $('.reg-form').hide();
        $('.login-form').hide();
        $('.welcome-form').hide();
        $('.forget-pass-form').show();
        e.preventDefault();
    });

    /*-----------------------------------*/
    /*  Perfect scrollbar initial for right-side - demo: http://jsbin.com/jajece/ */
    /*  Change 100% height to view height with mobile divice */
    /*-----------------------------------*/
    if (!isMobile() && $(window).width() >= 768) {
        $('#scroll-container').perfectScrollbar();          // Initialize perfect scroll bar
    };

    /*-----------------------------------*/
    /*  Change 100% height to view height with mobile divice */
    /*-----------------------------------*/
    if (isMobile()) {
        $(".left-side").height("100vh");
    }
});
