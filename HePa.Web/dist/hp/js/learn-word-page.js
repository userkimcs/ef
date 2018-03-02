/*-----------------------------------*/
/*  Auto height text-area */
/*-----------------------------------*/
function autoHeight(e) {
    $(e).css({
        'height': '40px', 'overflow-y': 'hidden'
    }).height(e.scrollHeight);
}
$(".input-autoheight").each(function () {
    autoHeight(this);
}).on('input', function () {
    autoHeight(this);
});

$(document).ready(function () {
    /*-----------------------------------*/
    /* Comment field script  */
    /*-----------------------------------*/
    // Default variable initation
    $showHideDur = 200;
    $commentField = $('#comment-field'); // comment-field
    $cancelBtns = $('.discussion-btn').children('button'); // all cancels buttons of new comment

    // hide comment field when page load
    $commentField.hide();

    // Click textarea to show the comment field
    $('#post-text-box').click(
        function () {
            // Show the comment fields
            $commentField.show($showHideDur);
        });
    // hide comment field when click on "Huỷ"
    $cancelBtns.click(
        function () {
            $commentField.hide($showHideDur);
        });

    /*-----------------------------------
    Enable all tooltips in the document
    Use data-toggle attribute to enable tooltip
    -----------------------------------*/
    $('[data-toggle="tooltip"]').tooltip();

    /*-----------------------------------*/
    /* Add slimscroll to navbar dropdown - NOT WORK YET */
    /*-----------------------------------*/
    /*
    $(".navbar .menu").slimscroll({
        height: "200px",
        alwaysVisible: false,
        size: "4px"
    }).css("width", "100%");
    */

    /*-----------------------------------*/
    /*  Progress bar is in the right column */
    /*-----------------------------------*/
    //$wordDone = $('.progress .progress-bar').attr('word-done');
    //$wordTotal = $('.progress .progress-bar').attr('word-totals');
    //$percentProgressBar = $wordDone * 100 / $wordTotal;
    //$('.progress .progress-bar').attr(
    //    'data-transitiongoal', $percentProgressBar
    //    ).progressbar({
    //        transition_delay: 1000,
    //        display_text: 'fill',
    //        use_percentage: false,
    //        amount_format: function (p, t) {
    //            return $wordDone + '/' + $wordTotal + ' từ';
    //        }
    //    });
});