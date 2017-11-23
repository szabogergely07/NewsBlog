$(document).on('turbolinks:load', function(){

var win = $(this);      // browser window
var nav = $('.navbar'); // your navigation bar

function switchNavbar() {
  if (win.width() < 768) { // on mobile
      nav.removeClass('navbar-fixed-top');
      nav.addClass('navbar-fixed-bottom');
      $("body").css("margin-top", "0px");

  } else { // on desktop
      nav.removeClass('navbar-fixed-bottom');
      nav.addClass('navbar-fixed-top');
      $("body").css("margin-bottom", "0px");
      $("div.navbar-fixed-top").autoHidingNavbar();
  }
}

// On first load
$(function() {
    switchNavbar();
});

 size_li = $("#myList li").size();
  x=3;
  $('#myList li:lt('+x+')').show();
  $('#loadMore').click(function () {
      x= (x+1 <= size_li) ? x+1 : size_li;
      $('#myList li:lt('+x+')').show();
  });
  $('#showLess').click(function () {
      x=(x-1<0) ? 1 : x-1;
      $('#myList li').not(':lt('+x+')').hide();
  });


  // Script for nav
  $( "span.menu" ).click(function() {
              $( ".head-nav ul" ).slideToggle(300, function() {
              // Animation complete.
              });
            });

});

