module Admin
	class CategoriesController < BaseController
		before_action :set_category, only:[:show, :edit, :update, :destroy]
		@is_cat_update = false

		def index
			@categories = Category.all
			@category = Category.new
		end

		def show
			@category = Category.find(params[:id])
		end

		def edit
			@is_cat_update = true
			@category = Category.find(params[:id])
		end

		def new
			@category = Category.new
		end

		def create
			policy(:category).create?
			@category = Category.new(safe_params)
			respond_to do |format|
				if @category.save
					format.html { redirect_to :back, notice: 'Successfully!' }
					format.json { render :show, status: :created, location: @category }
				else
					format.html { render :new }
					format.json { render json: @category.errors, status: :unprocessable_entity }
				end
			end
		end

		def update
			respond_to do |format|
				if @category.update(safe_params)
					format.html { redirect_to :back, notice: 'Successfully!' }
					format.json { render :show, status: :created, location: @category }
				else
					format.html { render :new }
					format.json { render json: @category.errors, status: :unprocessable_entity }
				end
			end
		end

		def destroy
			@category.destroy
			redirect_to :back
		end

		private
		def set_category
			@category = Category.find(params[:id])
		end

		def safe_params
			params.require(:category).permit(:name, :parent_id, :description, :count)
		end
	end
end