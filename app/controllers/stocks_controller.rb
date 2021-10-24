class StocksController < ApplicationController
  skip_before_action :authorized

  def index
    stocks = Stock.all
    render json: stocks
  end
  
  def create
    stock = Stock.create(stock_params)
    render json: stock, status: :created
  end

  def show
      stock = Stock.find_by(id: params[:id])
    if stock
        render json: stock
    else
        error_not_found
    end
  end

  private

  def stock_params
    params.permit(:company, :symbol, :price)
  end
end
