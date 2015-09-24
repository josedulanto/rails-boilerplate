# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require base/all

ready = ->
  # fix menu when passed
  $('.masthead').visibility
    once: false
    onBottomPassed: ->
      $('.fixed.menu').not('#flash-messages').transition('fade in')
      $('#flash-messages').css('top', $('.fixed.menu').height())
    onBottomPassedReverse: ->
      $('.fixed.menu').not('#flash-messages').transition('fade out')
      $('#flash-messages').css('top', 0)
  
  return
  
$(document).ready(ready)
$(document).on('page:load', ready)