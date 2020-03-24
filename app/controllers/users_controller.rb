class UsersController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @user = User.find(params[:id])
    @products = @user.products
  end

  def likes
    @user = User.find(params[:id])
    @likes = Like.where(user_id: @user.id)
    @products = @user.products
  end
end
