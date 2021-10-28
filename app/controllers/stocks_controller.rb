class StocksController < ApplicationController
  skip_before_action :authorized
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
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
  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_not_found_response
    render json: { error: "Stock not found" }, status: :not_found
  end 
end
