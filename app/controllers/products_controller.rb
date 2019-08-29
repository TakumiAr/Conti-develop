class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
end

def create
  @product = Product.new(product_params)
  if @product.save
    redirect_to product_path(@product.id)
  else
    render 'new'
  end
end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:title, :content)
  end
end