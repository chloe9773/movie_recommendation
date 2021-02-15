$(function () {
    $(".btn").click(function () {
        $(".open").toggle();
        $(".collapsed").toggle();
        $(".top-head").toggleClass('top-head-collapsed');
        $(".main").toggleClass('main-collapsed');
    });

    $(".info-head").click(function(){
        $(".info-content").toggle();
    });

    $(".dropdown-head").click(function () {
        $(this).next().slideToggle(300);
    });

    $(".bell").click(function(){
        $(".info-content-bell").toggle();
    });

    $(".user-initial").click(function(){
        $(".info-content-initial").toggle();
    });
});