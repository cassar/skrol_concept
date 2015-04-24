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

$('#english').click(function(){
   $('.english').toggle();
});

//Toggle button text

$(function(){
   $("#stop-start").click(function () {
      $(this).text(function(i, text){
          return text === "Stop" ? "Start" : "Stop";
      });
   });
});

$(function(){
   $("#target-language").click(function () {
      $("#target-language-toggle").text(function(i, text){
          return text === "On" ? "Off" : "On";
      });
   });
});

$(function(){
   $("#english").click(function () {
      $("#english-toggle").text(function(i, text){
          return text === "On" ? "Off" : "On";
      });
   });
});


};
$(document).ready(ready);
$(document).on('page:load', ready);

