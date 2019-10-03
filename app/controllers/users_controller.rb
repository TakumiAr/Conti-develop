class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  def index
    @q = User.includes(:gears).ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def search
    @q = User.search(search_params)
    @users = @q.result(distinct: true)
    render 'index'
  end

  def show
    @services = @user.services
    @portfolio = @user.portfolio
    @products = @user.products
    @gears = @user.gears
  end

  def edit
    unless @user.id = current_user.id then
      redirect_to users_mypage_path
    else
    end
  end

  def update
    @user.profile_text = user_params[:profile]
    if @user.update(user_params)
      redirect_to users_mypage_path
    else
      render 'edit'
    end
  end
  
  def mypage
  end

  def products
    @user = User.find(params[:user_id])
    @products = @user.products
  end

  def services
    @user = User.find(params[:user_id])
    @services = @user.services
  end

  def gears
    @user = User.find(params[:user_id])
    @gears = @user.gears
  end


  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :profile, 
      :avatar_image, 
      :video,
      :instrument,
      :has_been,
      :additional_explanation,
      :password,
      :password_confirmation
      )
  end

  def search_params
    params.require(:q).permit(
      :name_cont,
      :additional_explanation_or_profile_text_cont,
      :gears_name_cont
      )
  end

  def set_user
    @user = User.find(params[:id])
  end
end