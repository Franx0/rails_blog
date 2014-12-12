class CommentsController < ApplicationController

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment].permit(:name, :body))
        if @comment.save
            redirect_to post_path(@post)
        else 
            alert('Your comment has not been created')
        end
    end
end
