var ready;
ready = function() {

var $mq = $('.marquee').marquee({
   //speed in milliseconds of the marquee
    duration: 7500,
});


//Stop Start

$('#stop-start').click(function(){
  $mq.marquee('toggle');
});

$('.marquee').hover(function(){
  $mq.marquee('toggle');
});

//HideShow Languages

$('#target-language').click(function(){
   $('.target-language').toggle();
});

$('#target-phonetic').click(function(){
   $('.target-phonetic').toggle();
});

$('#english').click(function(){
   $('.english').toggle();
});

//Toggle button text

$(function(){
   $("#stop-start").click(function () {
      $(this).text(function(i, text){
          return text === "Skrolling" ? "Stopped" : "Skrolling";
      });
   });
});

$(function(){
   $("#target-language").click(function () {
      $(this).text(function(i, text){
          return text === "-" ? "+" : "-";
      });
   });
});

$(function(){
   $("#target-phonetic").click(function () {
      $(this).text(function(i, text){
          return text === "-" ? "+" : "-";
      });
   });
});

$(function(){
   $("#english").click(function () {
      $(this).text(function(i, text){
          return text === "-" ? "+" : "-";
      });
   });
});


};
$(document).ready(ready);
$(document).on('page:load', ready);

