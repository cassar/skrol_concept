$(document).ready(function() {
var $mq = $('.marquee').marquee();

//Pause
$('.marquee').hover(function(){
  $mq.marquee('toggle');
});
});

