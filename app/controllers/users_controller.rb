class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  def index
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to mypage_users_path
    else
      render 'edit'
    end
  end
  
  def mypage
  end

  def products
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end