var ready;
ready = function() {

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

$('#portuguese').click(function(){
   $('.portuguese').toggle();
});

$('#english').click(function(){
   $('.english').toggle();
});


};

$(document).ready(ready);
$(document).on('page:load', ready);
