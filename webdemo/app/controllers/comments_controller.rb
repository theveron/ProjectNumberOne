class CommentsController < ApplicationController
    before_action :set_post
    
    def create
        # it looks up the post that we are trying to add comments to and creates that
        @post.comments.create! comments_params
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
