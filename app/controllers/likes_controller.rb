class LikesController < ApplicationController

  before_action :set_variables

  def like
    like = current_user.likes.new(product_id: @product.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(product_id: @product.id)
    if like.destroy
    else
    flash.now[:alert] = '削除できませんでした'
    end
  end

  private

  def set_variables
    @product = Product.find(params[:product_id])
  end

end


