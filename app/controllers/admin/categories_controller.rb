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
			@category = Category.new(safe_params)
			@category.save
			redirect_to :back
		end

		def update			
			@category.update(safe_params)
			redirect_to :back
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