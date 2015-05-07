# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  
    #HideShow Languages
  $('#target-language').click ->
    $('.target-language').toggle()

  $('#target-phonetic').click ->
    $('.target-phonetic').toggle()

  $('#english').click ->
    $('.english').toggle()

  #Toggle button text
  $ ->
    $('#stop-start').click ->
      $(this).text (i, text) ->
        if text == 'Skrolling' then 'Stopped' else 'Skrolling'

  $ ->
    $('#target-language').click ->
      $(this).text (i, text) ->
        if text == '+' then '-' else '+'

  $ ->
    $('#target-phonetic').click ->
      $(this).text (i, text) ->
        if text == '+' then '-' else '+'

  $ ->
    $('#english').click ->
      $(this).text (i, text) ->
        if text == '+' then '-' else '+'
