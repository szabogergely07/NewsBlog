$(document).on('turbolinks:load', function(){

var win = $(this);      // browser window
var nav = $('.navbar'); // your navigation bar

function switchNavbar() {
    if (win.width() < 768) { // on mobile
        nav.removeClass('navbar-fixed-top');
        nav.addClass('navbar-fixed-bottom');

    } else { // on desktop
        nav.removeClass('navbar-fixed-bottom');
        nav.addClass('navbar-fixed-top');
        $("div.navbar-fixed-top").autoHidingNavbar();
    }
}

// On first load
$(function() {
    switchNavbar();
});

});