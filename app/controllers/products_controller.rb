class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
end

def create
  @product = current_user.products.build(product_params)
  if @product.save
    redirect_to user_path(current_user.id)
  else
    render 'new'
  end
end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:title, :explanation, :image, :video)
  end
end
