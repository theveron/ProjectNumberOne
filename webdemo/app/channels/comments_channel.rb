class CommentsChannel < ApplicationCable::Channel
  # this allows from somewhere else in this app to say "hey sends some stuff to the channel and everyone who subscribed to it"
  # by default it's going to braodcast to a specific channel here and renew this channel after the post thats comment belong to
  def self.broadcast(comment)
    broadcast_to comment.post, comment:
      # eg: helpful when you want to renders html to recipients
      CommentsController.render(partial: 'comments/comment', locals: {comment: comment})
  end

  def subscribed
    # all the streaming just happens of the last post in real application you would figure out from the url and embeded tag, which post you are on and just subscribe people to that post
    stream_for Post.last
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
