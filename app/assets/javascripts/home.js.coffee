# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  map = new GMaps(
    div: "#map"
    zoom: 16
    lat: -12.043333
    lng: -77.028333
    height: '400px'
    dragend: (e) ->
      alert "dragend"
    )
