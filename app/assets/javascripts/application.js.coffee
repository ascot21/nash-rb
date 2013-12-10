# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery_ujs
#= require_tree .
#= require chosen-jquery
#= require jquery.reveal
$ ->
  $('.close').click (e) ->
    e.preventDefault()
    $(e.target).parent(".alert").fadeOut()

  $('a.entry_modal').click (e) ->
    e.preventDefault()
    url = $(e.target).closest("a").data "url"
    user_name = $(e.target).closest("a").data "user-name"
    debugger
    $('.reveal-modal img').attr "src", url
    $('.reveal-modal .submitted-by').html "Submitted by: " + user_name
    $('.reveal-modal').reveal()