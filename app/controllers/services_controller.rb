class ServicesController < ApplicationController
  before_action :set_service, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  
  def new
      @service = Service.new
  end

  def create
    @service = current_user.services.build(service_params)
    if @service.save
      redirect_to user_path(current_user.id)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    unless @service.user_id = current_user.id then
      redirect_to users_mypage_path
    else
    end
  end

  def update
    if @service.update(service_params)
      redirect_to services_path
    else
      render 'edit'
    end
  end

  def destroy
    @service.destroy
    redirect_to root_path
  end

  private

  def service_params
    params.require(:service).permit(
      :title,
      :content, 
      :additional_explanation, 
      :service_category, 
      :image)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end