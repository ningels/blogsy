class PostsController < ApplicationController

  def index
    @post = Post.all
    render json: @post
  end

  # def create
  #   @post = Post.new(post_params)
  #   if @post.save
  #     render json: @post
  #   else
  #     render json: @post.errors.full_messages, status: 400
  #   end
  # end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def show_comments
    @comments = Post.find(params[:id]).comments
    render json: @comments
  end

end
