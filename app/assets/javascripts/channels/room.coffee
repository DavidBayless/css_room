App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    console.log("connected")

  disconnected: ->
    console.log("disconnected")

  received: (data) ->
    $("#messages").prepend "<p>#{data.id} " + "#{data.content}</p>"

  speak: (message) ->
    @perform 'speak', message: message

$(document).on "keypress", "[data-behavior~=room_speaker]", (event) ->
  if event.keyCode is 13 # return = send
    App.room.speak event.target.value
    event.target.value = ""
    event.preventDefault()
