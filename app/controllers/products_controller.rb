class ProductsController < ApplicationController
  def index
    @products = Product.includes(:user).page(params[:page]).per(20).order("created_at DESC")
  end

  def show
    @product = Product.find(params[:id])
    @product_name = MainTag.find(@product.main_tag_id).name
    @product_name2 = MainTag.find(@product.main_tag_id).parent.name
    @product_name3 = MainTag.find(@product.main_tag_id).parent.parent.name
    @comment = Comment.new
    @comments = @product.comments.includes(:user).order("created_at DESC")
  end

  def new
    @product = Product.new
    @product.item_images.new
    @category_parent_array = ["---"] + MainTag.where(ancestry: nil).pluck(:name)
  end

  def get_category_children
    @category_children = MainTag.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def get_category_grandchildren
    @category_grandchildren = MainTag.find("#{params[:child_id]}").children
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      @category_parent_array = ["---"] + MainTag.where(ancestry: nil).pluck(:name)
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    pick_parent = @product.main_tag.parent.parent
    pick_child = @product.main_tag.parent
    pick_grandchild = @product.main_tag
    @category_parent_array_new = ["-新しく設定-"] + MainTag.where(ancestry: nil).pluck(:name)
    @category_parent_array = [[pick_parent.name ,pick_parent.id]]
    @category_child_array = [[pick_child.name, pick_child.id]]
    @category_grandchild_array = [[pick_grandchild.name, pick_grandchild.id]]
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)

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

  def search 
    @products = Product.search(params[:search]).page(params[:page]).per(20).order("created_at DESC")
  end

  private
  def product_params
    params.require(:product).permit(:item_name, :detail, :main_tag_id, :price, :item_status, :postage_cost, :ship_area, :ship_method, :ship_date, item_images_attributes: [:src, :_destroy, :id]).merge(seller_id: current_user.id, user_id: current_user.id)
  end
  
  def set_product
    @product = Product.find(params[:id])
  end
end
