class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
        if params[:search]
            @post = Post.search(params[:search])
        else
            @post = Post.last(4)
        end
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.save
        if @post.save
            redirect_to posts_path
        else 
            redirect_to new_post_path
        end
    end

    def show
        @post = Post.find(params[:id])
        @comment = @post.comments
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update_attributes post_params
            redirect_to post_path
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
        params.require(:post).permit(:title, :body, :category, :video, :audio)
    end
end

