module Admin
	class ProductsController < BaseController
		before_action :set_product, only:[:show, :edit, :update, :destroy]
		def index
			@products = Product.all
		end

		def new
			@product = Product.new
		end

		def show 
			@product = Product.find(params[:id])
		end

		def create
			@product = Product.new(safe_params)

			if @product.save
				redirect_to :back
			else
				render 'new'
			end
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
end