class PostsController < ApplicationController

    def index
        @post = Post.all.order('created_at DESC')
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.save

        if @post.save
            redirect_to @post
        else 
            redirect_to new_post_path
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update
            redirect_to @post
        else
            redirect_to edit_post_path
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        if @post.destroy
            redirect_to posts_path
        else
            redirect_to @post
        end
    end

    private
    def post_params
        params.require(:post).permit(:title, :body)
    end
end

