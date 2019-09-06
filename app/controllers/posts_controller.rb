class PostsController < ApplicationController 
    
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to post_path
    end

    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        @post = Post.find(params[:id])
        redirect_to post_path
    end

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end
  
end