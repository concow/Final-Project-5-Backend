class StocksController < ApplicationController


def index
    render json: Stock.all
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
