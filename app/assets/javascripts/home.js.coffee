# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  map = new GMaps(
    div: "#map"
    zoom: 12
    lat: 19.239522
    lng: -103.727074
    height: '400px'
    dragend: (e) ->
      console.log "dragend"
    )
