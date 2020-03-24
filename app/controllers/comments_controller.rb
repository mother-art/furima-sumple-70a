class CommentsController < ApplicationController

  
  def create
    @comment = Comment.create(comment_params)
    redirect_to  product_path(@comment.product.id)
  end
  
  def show
    @comment = Comment.new
    @comments = @product.comments.includes(:user)
  end
  private
  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id, product_id: params[:product_id])
  end
end
