class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def search
    @q = User.search(search_params)
    @users = @q.result(distinct: true)
    render 'index'
  end

  def show
    @user = User.find(params[:id])
    @services = @user.services
    @portfolio = @user.portfolio
    @products = @user.products
    @gears = @user.gears
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_mypage_path
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
    params.require(:user).permit(:name, :email, :profile, :avatar_image, :password, :password_confirmation)
  end

  def search_params
    params.require(:q).permit(:name_cont)
  end

  def set_user
    @user = User.find(params[:id])
  end
end