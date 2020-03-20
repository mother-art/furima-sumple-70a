class LikesController < ApplicationController

  before_action :set_variables

  def like
    like = current_user.likes.new(product_id: @product.id)
    like.save
    flash.now[:alert] = '登録できませんでした' unless like.save
  end

  def unlike
    like = current_user.likes.find_by(product_id: @product.id)
    like.destroy
    flash.now[:alert] = '削除できませんでした' unless like.save 
    end
  end

  private

  def set_variables
    @product = Product.find(params[:product_id])
  end

end


