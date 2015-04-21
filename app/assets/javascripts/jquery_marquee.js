$(document).ready(function() {
var $mq = $('.marquee').marquee();

//Pause
$('.marquee').hover(function(){
  $mq.marquee('toggle');
});

//HideShow Languages

$('#german').click(function(){
   $('.german').toggle();
});

$('#japanese').click(function(){
   $('.japanese').toggle();
});

$('#english').click(function(){
   $('.english').toggle();
});


});

