class ProductsController < ApplicationController

  def index
    
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new

  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(:item_name, :detail, :category, :price, :item_status, :postage_cost, :ship_area, :ship_method, :ship_date).merge(user_id: current_user.id)
  end

end
