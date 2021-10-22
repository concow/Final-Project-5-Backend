class StocksController < ApplicationController


def index
    stocks = Stock.all
    render json: stocks
end

def show
      user = User.find_by(id: params[:id])
    if user
        render json: user
    else
        error_not_found
    end
  end
end
