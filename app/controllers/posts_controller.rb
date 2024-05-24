class PostsController < ApplicationController
  def index
    @posts = Post.all
  end 

  def create
    @posts = Post.new
    @posts["body"] = params["body"]
    @posts["user_id"] = session["user_id"]
    @posts.save 
    redirect_to "/posts"
  end 

end
