class UsersController < ApplicationController
  def index
  end

  def show
    user = User.find(params[:id])
    @products = user.products
  end
end
