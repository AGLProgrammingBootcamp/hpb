class PostsController < ApplicationController

    
    def new
        @post=Post.new
    end
  
    #本当はvalidationを使うべき
    def create
        #fail params.inspect
        @post=Post.new(post_params)
        @post.save
        redirect_to @post
    end
  
    def show
        @post=Post.find(params[:id])
    end
    
    def input
    end
        
    def search_price
        @sakes=Post.all
        posts = Post.all
        @posts = Array.new
        posts.each do |post|
            item = post.price >= params[:price1].to_i && post.price <= params[:price2].to_i
            if item
                @posts << post
            end
        end 
        render :action => 'index' 
    end
    
    def index
         @posts=Post.find(params[:id])
    end
    
    private
    
    def post_params
        params.require(:post).permit(:sake_name, :price, :location, :date, :user_name, :email)
    end
    
    
end