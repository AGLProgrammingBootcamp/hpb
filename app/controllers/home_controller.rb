class HomeController < ApplicationController
  
  def top
  end
  
  def new
    @post=Post.new
  end
  
  def create
    post=Post.new
    post.sake_name=params[:sake_name]
    post.price=params[:price]
    post.location=params[:location]
    post.date=params[:date]
    post.user_name=params[:user_name]
    post.email=params[:email]
    post.save
  end
  
  def show
  end
  
  def index
  end
  
end
