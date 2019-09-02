class GearsController < ApplicationController
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

  private

  def gear_params
    params.require(:gear).permit(:name, :image)
  end
end
