module Admin
	class UsersController < BaseController
		before_action :set_user, only:[:show, :edit, :update, :destroy]

		@is_user_update = false

		def index
			@users = User.order("id DESC")
		end

		def show
			@user = User.find(params[:id])
		end

		def edit
			@is_user_update = true
			@user = User.find(params[:id])
		end

		def new
			@user = User.new
		end

		def create
			@user = User.new(safe_params)
			respond_to do |format|
				if @user.save
					format.html { redirect_to edit_admin_user_path(@user), notice: 'Created Successfully!' }
					format.json { render :show, status: :created, location: @user }
				else
					format.html { render :new }
					format.json { render json: @user.errors, status: :unprocessable_entity }
				end
			end
		end

		def update
			respond_to do |format|
				if @user.update(safe_params)
					format.html { redirect_to :back, notice: 'Updated Successfully!' }
					format.json { render :show, status: :updated, location: @user }
				else
					format.html { render :edit }
					format.json { render json: @user.errors, status: :unprocessable_entity }
				end
			end
		end

		def destroy
			respond_to do |format|
				if @user.destroy
					format.html { redirect_to :back, notice: 'Deleted Successfully!' }
					format.json { render :show, status: :deleted, location: @user }
				else
					format.html { render :back }
					format.json { render json: @user.errors, status: :unprocessable_entity }
				end
			end
		end

		private
		def set_user
			@user = current_user
		end

		def safe_params
			params.require(:user).permit(:phone, :fullname, :email, :password, :avatar, :address, :biographical, :active, :role_id)
		end
	end
end