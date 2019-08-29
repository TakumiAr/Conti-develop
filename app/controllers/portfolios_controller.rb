class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:edit, :update]
  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = current_user.portfolios.build(portfolio_params)
    if @portfolio.save
      redirect_to user_path(current_user.id)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @portfolio.update(portfolio_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:portfolio01, :portfolio02, :portfolio03, :portfolio04, :portfolio05)
  end

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
