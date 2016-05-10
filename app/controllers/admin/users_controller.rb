module Admin
	class UsersController < BaseController
		before_action :set_user, only:[:show, :edit, :update, :destroy]
		def index
			@users = User.order("created_at DESC")
		end

		def show
			@user = User.find(params[:id])
		end

		def new
			@user = User.new
		end

		def create
			@user = User.new(safe_params)
			@user.save
			redirect_to admin_users_path
		end

		def update
			@user = User.find(params[:id])
			@user.update(safe_params)
			redirect_to :back
		end

		def destroy
			@user.destroy
			redirect_to :back
		end

		private
		def set_user
			@user = User.find(params[:id])
		end

		def safe_params
			params.require(:user).permit(:phone, :fullname, :email, :password, :avatar, :address, :active)
		end
	end
end