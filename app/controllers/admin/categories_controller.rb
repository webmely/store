module Admin
	class CategoriesController < BaseController
		before_action :set_category, only:[:show, :edit, :update, :destroy]
		def index
			@categories = Category.all
		end

		def show 
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
			@category = Category.find(params[:id])
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
			params.require(:category).permit(:name, :parent_id, :description)
		end
	end
end