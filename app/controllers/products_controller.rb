class ProductsController < ApplicationController
  before_action :set_product, only: [:edit]
  before_action :set_product, except: [:index, :new, :create,:search]
  
  def index
    @products = Product.includes(:user).page(params[:page]).per(20).order("created_at DESC")
  end
  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.search(params[:search]).page(params[:page]).per(20).order("created_at DESC")
  end

  def new
    @product = Product.new
    @product.item_images.new
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
    product = Product.find(params[:id])
    if product.update(product_params)

    else
      render :edit
    end
  end

    def destroy
      product = Product.find(params[:id])
      if product.destroy
      redirect_to products_path, notice: '出品した商品を削除しました'
      else
      flash.now[:alert] = '商品を削除できませんでした'
      render :index
      end
    end

  def buyer
  end

  private
  def product_params
    params.require(:product).permit(:item_name, :detail, :category, :price, :item_status, :postage_cost, :ship_area, :ship_method, :ship_date, item_images_attributes: [:src]).merge(seller_id: current_user.id, user_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
