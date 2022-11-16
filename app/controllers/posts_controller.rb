class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
    @posts = Post.create(content: params[:content])
    redirect json:{ post: post }
  end
end
