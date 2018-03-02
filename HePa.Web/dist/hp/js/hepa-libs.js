/*-----------------------------------*/
/*  Preloader - page loading animation - https://niklausgerber.com/blog/preloadme-a-lightweight-jquery-website-preloader/ */
/*-----------------------------------*/
$(window).load(function () { // makes sure the whole site is loaded
    $('#status').fadeOut(); // will first fade out the loading animation
    $('#preloader').delay(200).fadeOut(600);
    $('body').css({ 'overflow': 'visible' });
})

/*-----------------------------------*/
/*  Detected mobile */
/*-----------------------------------*/
var isMobile = function () {
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|Windows Phone|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
        return true;
    }
    return false;
}

/*-----------------------------------*/
/*  Variable view port size (also containt scrollbar) */
/*-----------------------------------*/
var viewport = {
    width: $(window).width(),
    height: $(window).height()
}; //can access dimensions like this: viewport.width

/*-----------------------------------*/
/*  Detect touch device to disable tooltips */
/*-----------------------------------*/
//var is_touch_device = ("ontouchstart" in window) || window.DocumentTouch && document instanceof DocumentTouch;
//$('[data-toggle="tooltip"]').popover({
//    trigger: is_touch_device ? "click" : "hover"
//});