class CommentsController < ApplicationController

  def index
  end
  def create
    @comment = Comment.create(comment_params)
  end
    
  def new
    @comment = Comment.new
  end


  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end
end
