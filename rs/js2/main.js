$(function(){
  'use strict';


/// Adjust Slider height
var wH = $(window).height() ,
    nH = $('.navbar').innerHeight() ,
    upperH = $('.upper-bar').innerHeight() ;
$('.slider , .carousel-item ').height( wH - (nH + upperH));

$(window).scroll(function(){

var wH = $(window).height() ,
    nH = $('.navbar').innerHeight() ,
    upperH = $('.upper-bar').innerHeight() ;
$('.slider , .carousel-item ').height( wH - (nH + upperH));
});

//
var ww = $(window).width() ,
    hw = $('.carousel-inner h3').width();
     ///




     ///

//var mt= $('body').innerHeight() - ($('container').innerHeight() + $('upper-bar').innerHeight());
//$('.bar-bottom').css('marginTop', '500px' );
//$('.bar-bottom').css('marginTop', $('cc').innerHeight() - $('.bar-bottom').innerHeight());
$('.bar-bottom').css('marginTop',  ($('body').innerHeight() - $('cc').innerHeight()));




    $( '.fiexd-menu .icon').on('click' , function(){
      $(this).parent('.fiexd-menu').toggleClass('is-visibale');
      if($(this).parent('.fiexd-menu').hasClass('is-visibale')){
        $(this).parent('.fiexd-menu').animate({
          right:0
        },500 )
      }else {
        $(this).parent('.fiexd-menu').animate({
          right:'-220px'
        },500 );
      }
    });


    $('.li').click(function(){
      $('.li').removeClass('active');
      $(this).addClass('active');
    });







//switch bt tabs
$( '.li').click(function(){
  $(this).addClass('active').siblings().removeClass('active');
});

});
