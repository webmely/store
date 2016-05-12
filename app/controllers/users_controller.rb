class UsersController < ApplicationController
	before_action :set_user, only:[:show, :edit, :update, :destroy]
  def index
  	@users = User.all
  end

  def show
  end

  def edit
  end

  def update
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
  	params.require(:user).permit(:phone, :fullname, :email, :password, :avatar, :address, :active, :role_id)
  end
end
