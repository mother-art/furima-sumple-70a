class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @products = User.find(params[:id]).products
  end

  def likes
     @user = User.find_by(id: params[:id])
     @likes = Like.where(user_id: @user.id)
     @products = User.find(params[:id]).products
  end

 
end
