class ProductsController < ApplicationController
  before_action :set_product, only:[:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def show  	
  end

  def update
    @product.update(safe_params)
    redirect_to :back
  end

  private
  def set_product
  	@product = Product.find(params[:id])
  end

  def safe_params
  	params.require(:product).permit(:name, :price, :price_current, :thumbnail, :active, :description, :short_description)
  end
end