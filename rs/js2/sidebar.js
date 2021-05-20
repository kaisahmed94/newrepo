$(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
    });

    $('#wlink').on('click', function () {
        $(this).children("img").css('opacity','0.5');
    });
  
});


