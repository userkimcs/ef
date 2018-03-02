$(document).ready(function () {
    /*---------------------------------*/
    /*      INTRODUCTION PANEL         */
    /*---------------------------------*/


    /*---------------------------------*/
    /*      NEXT AND PREV BUTTON       */
    /*---------------------------------*/

    //button click in billing form
    $('.payment-form #billing .btn-next').on('click', function (e) {
        $('a[href="#shipping"]').tab('show');
        e.preventDefault();
    });

    //button click in prev form
    $('.payment-form #shipping .btn-prev').on('click', function (e) {
        $('a[href="#billing"]').tab('show');
        e.preventDefault();
    });

    /*---------------------------------*/
    /*   FORM LOAI THE EVENT HANDLER   */
    /*---------------------------------*/
    $('#sel_period').change(function () {
        selected = $('#sel_period option:selected');
        if (selected.val() != 0) {
            text = selected.text();
            price = selected.data("price");
            $('#review_ticket_kind').html(text + " - " + price.toLocaleString("vi"));
            $('#txt_productname').val(text);
            $('#txt_productid').val($('#sel_period option:selected').data('id'));
        }
    })

    $('#txt_amount').change(function () {
        if ($('#txt_amount').val() > 0) {
            $('#review_ticket_amount').html($('#txt_amount').val());
        }

        //Hiện thông tin khuyến mãi
        if (($('#txt_amount').val()) > 1) {
            $("#safeOff_amount").html("x2 thời gian");
        }
    })

    /*----------------------------------------------*/
    /*    FORM THONG TIN THANH TOAN EVENT HANDLER   */
    /*----------------------------------------------*/
    //Name
    $('#txt_name').change(function () {
        $('#review_customer_name').html($('#txt_name').val());
    })

    //Phone
    var phoneNo = " - ";
    $('#txt_phone2').change(function () {
        text = $('#txt_phone2').val().replace(/_/g, "");
        $('#review_customer_phone2').html(" - " + text);
        if (text.length > 0) {
            $('#split-phone').show();
        }
        else {
            $('#split-phone').hide();
        }
        var arr = phoneNo.split("-");
        arr[1] = text;
        phoneNo = arr[0] + " - " + arr[1];
        $('#txt_phone').val(phoneNo);
    })

    $('#txt_phone1').change(function () {
        text = $('#txt_phone1').val().replace(/_/g, "");
        $('#review_customer_phone1').html(text);
        var arr = phoneNo.split("-");
        arr[0] = text;
        phoneNo = arr[0] + " - " + arr[1];
        $('#txt_phone').val(phoneNo);
    })

    //Email
    $('#txt_email').change(function () {
        //if ($('#txt_email').val()) {
        $('#review_customer_email').html($('#txt_email').val());
        //}

    })

    //Address
    $('#geocomplete').on('change', function () {
        $('#review_customer_address').html($('#geocomplete').val());
    })

    if ($('#txt_phone').val()) {
        $('.review-customer-info').show();
        var phone = $('#txt_phone').val();
        var arr = (phone.replace(/_/g, "")).split("-");
        $('#txt_phone1').val(arr[0]);
        $('#txt_phone2').val(arr[1]);
        $('#review_customer_phone1').html(arr[0]);
        $('#review_customer_phone2').html(" - " + arr[1]);
    }

    if ($("#kind_of_purchase").val()) {
        //Xuất ra review
        text = $("#kind_of_purchase").val();
        $('#review_payment_kind').html(text);
        if (text == " Giao thẻ và thu tiền tận nhà") {
            $('.giao-the').attr('checked', 'checked');
        }
        else {
            $('.thanh-toan').attr('checked', 'checked');
            $('.review-payment-info').show('slow');
        }
    }
    else {
        $('.giao-the').attr('checked', 'checked');
        $("#kind_of_purchase").val(" Giao thẻ và thu tiền tận nhà");
        $('#review_payment_kind').html(" Giao thẻ và thu tiền tận nhà");
    }

    setInterval(function () {
        $('#review_customer_name').html($('#txt_name').val());
        $('#review_customer_email').html($('#txt_email').val());

        if ($('#review_customer_address').html() != $('#geocomplete').val()) {
            $('#review_customer_address').html($('#geocomplete').val());
        }
        if ($('#txt_name').val() || $('#txt_email').val() || $('#txt_phone').val()) {
            $('.review-customer-info').show();
        }
        if ($("#kind_of_purchase").val()) {
            $('.review-payment-info').show('slow');
        }
    }, 500);


    //Hinh thuc thanh toan
    $('.payment-kind input').on('ifChecked', function () {
        var input = $('.payment-kind input[name="optradio"]:checked');
        var text = input.parent().parent().text();
        //Xuất ra review
        $('#review_payment_kind').html(text);
        $("#kind_of_purchase").val(text);
    })


    /*----------------------------------------------*/
    /*             SHOW AND HIDE REVIEW PART        */
    /*----------------------------------------------*/

    //Default
    $('.review-customer-info, .review-payment-info').hide();

    //Customer info
    $('.customer-info input').on('change', function () {
        if ($('#txt_name').val() || $('#txt_phone1').val() || $('#txt_phone2').val() || $('txt_email').val() || $('#txt_address').val()) {
            $('.review-customer-info').show('slow');
        }
        else {
            $('.review-customer-info').hide('slow');
        }
    })

    //payment info
    $('.review-payment-info input').on('change', function () {
        if ($('#txt_amount').val() || $('#sel_period option:selected').val() != 0) {
            $('.review-ticket-info').show('slow');
        }
        else {
            $('.review-ticket-info').hide('slow');
        }
    })

    $('.payment-kind input').on('ifChecked', function () {
        if ($('.payment-kind input[type="radio"]:checked')) {
            $('.review-payment-info').show('slow');
        }
        else {
            $('.review-payment-info').hide('slow');
        }
    })



    /*----------------------------------------------*/
    /*             PHONE MARK                   */
    /*----------------------------------------------*/
    $(".phone-number").mask("?999 9999 9999");
    $(".phone-number").on("blur", function () {
        var last = $(this).val().substr($(this).val().indexOf(" ") + 1);

        if (last.length == 3) {
            var move = $(this).val().substr($(this).val().indexOf(" ") - 1, 1);
            var lastfour = move + last;

            var first = $(this).val().substr(0, 9);
            var text = first + ' ' + lastfour;
            $(this).val(text);
        }
    });

    /*----------------------------------------------*/
    /*             TEXT AMOUNT EVENT                 */
    /*----------------------------------------------*/
    $("#txt_amount").keypress(function (e) {
        var character = e.which;
        if (character < 48 || character > 57) {    // 0-9 -> (48-57) in jQuery char code
            e.preventDefault();
        }
    })

    $("#txt_amount").blur(function (e) {
        if (parseInt($("#txt_amount").val()) > 100) {
            $("#txt_amount").val('100');
            $("#review_ticket_amount").html($("#txt_amount").val());
        }
    })

    /*----------------------------------------------*/
    /*             AUTOCOMPLTE ADDRESS              */
    /*----------------------------------------------*/
    $(function () {
        $("#geocomplete").geocomplete();
    });


    $('.collapse-link, .tabs-link').on('click', function (e) {
        e.preventDefault();
    });

    /*----------------------------------------------*/
    /*                ICHECK RADIO               */
    /*----------------------------------------------*/
    $('.skin-flat input').iCheck({
        checkboxClass: 'icheckbox_flat-red',
        radioClass: 'iradio_flat-red'
    });
});