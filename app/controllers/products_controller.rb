class ProductsController < ApplicationController
  before_action :set_product, only:[:show, :edit, :update, :destroy]

  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

  def search
    @q = Product.search(search_params)
    @products = @q.result(distinct: true)
    render 'index'
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
  end

  def edit
    if @product.user_id = current_user.id then
      redirect_to root_path
    else
    end
  end

  def update
    if @product.update(product_params)
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def destroy
    if @product.user_id = current_user.id then
      @product.destroy
      redirect_to root_path
    else
    end
  end

  private

  def product_params
    params.require(:product).permit(
      :title, 
      :content,
      :song_title, 
      :explanation, 
      :instrument, 
      :score, 
      :video
    )
  end

  def search_params
    params.require(:q).permit(
      :title_cont,
      :song_title_cont,
      :content_cont
      )
  end

  def set_product
    @product = Product.find(params[:id])
  end
end