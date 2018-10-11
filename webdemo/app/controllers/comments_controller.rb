class CommentsController < ApplicationController
    before_action :set_post
    
    def create
        # it looks up the post that we are trying to add comments to and creates that
            #@post.comments.create! comments_params
        comment = @post.comments.create! comments_params #after we create a comment, lets save that to local variable
        # call the comments mailer
        # deliver_later means that we dont want to tie up the respond to this action and sending the email in live, we use this which will trigger the job framework for ruby on rails to send this email asynchronously, even the render of the of the email will happen asynchronously outside of the main request responds flow
        CommentsMailer.submitted(comment).deliver_later
        # add another call here, broadcast the comment when a new comments comes in 
        CommentsChannel.broadcast(comment)
        # after that, it redirects back to @post, by redirecting to @post, we did the same lookup as we did the render, where it looks up for the routes for the post matches the model
        redirect_to @post
    end

    private
        def set_post    
            @post = Post.find(params[:post_id])
        end

        # comments_params is knowns as "strong parameters" where everything is white listed such that nothing just gets added automatically to the database
        def comments_params
            params.required(:comment).permit(:body)
        end
end
