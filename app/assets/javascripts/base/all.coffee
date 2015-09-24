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
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require semantic-ui/dist/semantic.min

ready = ->
  # Enable popups
  # Add this class to an item with a 'title' attribute
  # Ex: <a href="#" title="Hello World!" class="with-popup">I have a popup</a>
  # Refer to the documentation for more examples http://semantic-ui.com/modules/popup.html#/examples
  $('.with-popup').popup()
  
  # Enable dropdowns
  $('.ui.dropdown').dropdown()
  
  # Toggle left sidebar when clicking the 'Sidebar' link in the navbar
  $('.ui.sidebar').sidebar 'attach events', '.toc', 'toggle'
  
  # Hide the message when clicking the 'x' (close) icon
  $('.message .close').on 'click', -> $(this).closest('.message').transition('fade')
  
  # By default Semanti UI hides messages in a form and makes them visible through their Form Validation API
  # Since we are using validations from Rails models I'm using the '.with-message' CSS class in forms to 
  # always show messages
  $('.ui.form.with-message .ui.message').show()
    
$(document).ready(ready)
$(document).on('page:load', ready)