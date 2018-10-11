App.comments = App.cable.subscriptions.create "CommentsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # received data which is the render template of the comments that we just set up in the broadcast method, basically just add that to the id commments div that we had set up earlier
    # append that and the data comes in form of comment
    $('#comments').append data.comment
