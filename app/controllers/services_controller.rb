class ServicesController < ApplicationController
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
    @service = Service.find(params[:id])
  end

  private

  def service_params
    params.require(:service).permit(:title, :content, :additional_explanation, :service_category, :image)
  end
end