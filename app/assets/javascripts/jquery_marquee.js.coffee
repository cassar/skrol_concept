$(document).on "page:change", ->
  
  $mq = $('.marquee').marquee(duration: 7500)
  #Stop Start
  $('#stop-start').click ->
    $mq.marquee 'toggle'

  $('.marquee').hover ->
    $mq.marquee 'toggle'
