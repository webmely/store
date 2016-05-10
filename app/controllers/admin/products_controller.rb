module Admin
	class ProductsController < BaseController
		before_action :set_product, only:[:show, :edit, :update, :destroy]
		def index
			@products = Product.order("created_at DESC").page(params[:page]).per(10)
		end

		def show 
			@product = Product.find(params[:id])
		end

		def new
			@product = Product.new
		end

		def create
			@product = Product.new(safe_params)
			@product.save
			redirect_to admin_products_path
		end

		def update			
			@product = Product.find(params[:id])
			@product.update(safe_params)
			redirect_to :back
		end

		def destroy
			@product.destroy
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
end