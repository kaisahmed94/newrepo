$(function () {
    'use strict';

    $('.fiexd-menu .icon').on('click', function () {
        $(this).parent('.fiexd-menu').toggleClass('is-visibale');
        if ($(this).parent('.fiexd-menu').hasClass('is-visibale')) {
            $(this).parent('.fiexd-menu').animate({
                right: 0
            }, 500)
        } else {
            $(this).parent('.fiexd-menu').animate({
                right: '-220px'
            }, 500);
        }
    });


    $('li a').click(function () {
        //$('.li').removeClass('active');
        $('li a').removeClass('active');
        $('li a').addClass('active');
      //  $(this).addClass('active').parent().sibling().find('a').removeClass();
    });

     ///

//var mt= $('body').innerHeight() - ($('container').innerHeight() + $('upper-bar').innerHeight());
//$('.bar-bottom').css('marginTop', '500px' );
//$('.bar-bottom').css('marginTop', $('cc').innerHeight() - $('.bar-bottom').innerHeight());
$('.bar-bottom').css('marginTop',  ($('body').innerHeight() - $('cc').innerHeight()));


});
