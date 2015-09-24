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
#= require dashboard

window.waitForFinalEvent = (() ->
  timers = {}
  (callback, ms, uniqueId) ->
    uniqueId = "Don't call this twice without a uniqueId" unless uniqueId
    if timers[uniqueId]
      clearTimeout(timers[uniqueId])
    timers[uniqueId] = setTimeout(callback, ms)
    return
)()

window.flashMessagesPosition = ->
  if $('.mobile.only.row').is(':visible')
    $('#flash-messages').css 'top', $('.mobile.only.row .main.menu').height()
  else
    $('#flash-messages').css 'top', $('.computer.only.row .main.menu').height()
    
window.menuDropdownPosition = ->
  $('#responsive-main-menu').css 'top', $('#responsive-main-menu').siblings('.main.menu').height()
  
window.mainContainerPosition = ->
  if $('.mobile.only.row').is(':visible')
    $('.main.container').css 'margin-top', $('.mobile.only.row .main.menu').height()
  else
    $('.main.container').css 'margin-top', $('.computer.only.row .main.menu').height()
    
window.doAdjustments = ->
  flashMessagesPosition()
  menuDropdownPosition()
  mainContainerPosition()
  
ready = ->
  # Toggle dropdown when clicking the hamburger icon in navbar
  $('.right.menu.open').on 'click', (e) ->
    e.preventDefault()
    $('#responsive-main-menu').toggle()
    
  $(window).resize () ->
    waitForFinalEvent () ->
      doAdjustments()
      return
    , 500, "resizing_timer"
    return
  
  doAdjustments()
  
$(document).ready(ready)
$(document).on('page:load', ready)