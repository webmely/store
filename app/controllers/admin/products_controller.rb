module Admin
	class ProductsController < BaseController
		before_action :set_product, only:[:show, :edit, :update, :destroy]
		@is_product_update = false

		def index
			@products = Product.order("created_at DESC").page(params[:page]).per(10)
		end

		def show
			@product = Product.find(params[:id])
			@categories = @product.categories
		end

		def new
			@product = Product.new
		end

		def edit
			@is_product_update = true
			@categories = @product.categories
		end

		def create
			@product = Product.new(safe_params)
			respond_to do |format|
				if @product.save
					product = params[:product]
					product[:categories].each do |e|
						unless e.blank?
							# e = CategoriesProduct.new(:category_id => e, :product_id => @product.id)
							@product.categories_products.created(:category_id => e.id)
						end
					end

					format.html { redirect_to edit_admin_product_path(@product), notice: 'Successfully!' }
					format.json { render :show, status: :created, location: @product }
				else
					format.html { render :new }
					format.json { render json: @product.errors, status: :unprocessable_entity }
				end
			end
		end

		def update
			@categories = @product.categories

			if @product.update(safe_params)
				product = params[:product]
				product[:categories].each do |c|
					unless c.blank?
						c = CategoriesProduct.new(:category_id => c, :product_id => @product.id)
						if c.valid?
							c.save
						else
							@errors += c.errors
						end
					end
				end

			else
				render "new"
			end

			redirect_to :back
		end

		def destroy
			if @product.destroy
				redirect_to :back
			else
				redirect_to :back
			end
		end

		private
		def set_product
			@product = Product.find(params[:id])
		end

		def safe_params
			params.require(:product).permit(:name, :price, :price_current, :quantity, :thumbnail, :active, :description, :short_description)
		end
	end
end