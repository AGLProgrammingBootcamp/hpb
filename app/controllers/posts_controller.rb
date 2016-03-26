class PostsController < ApplicationController

    
    def new
        @post=Post.new
    end
  
    def create
        #fail params.inspect
        @post=Post.new(post_params)
        @post.save
        redirect_to @post
    end
  
    def show
        @post=Post.find(params[:id])
    end
    
    
    private
    
    def post_params
        params.require(:post).permit(:sake_name, :price, :location, :date, :user_name, :email)
    end
    
    
end