class GearsController < ApplicationController
  before_action :set_gear, only:[:show, :edit, :update, :destroy]

  def new
    @gear = Gear.new
  end

  def create
    @gear = current_user.gears.build(gear_params)
    if @gear.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @gear.update(gear_params)
      redirect_to gears_path
    else
      render 'edit'
    end
  end

  def destroy
    @gear.destroy
    redirect_to gears_path
  end

  private

  def gear_params
    params.require(:gear).permit(:name, :image)
  end

  def set_gear
    @gear = Gear.find(params[:id])
  end
end
