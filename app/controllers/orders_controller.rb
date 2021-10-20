class OrdersController < ApplicationController

    def index   
        render json: Order.all   
    end

    def show
        order = Order.find_by_id(params[:id])
        if order
            render json: order
        else
            render json: {error: "Order not found"}, status: :not_found
        end
    end

    def create
        order = Order.create!(order_params)
        if order.valid?
            render json: order, status: :created
        else 
          render json: { error: order.errors.full_messages }, status: :unprocessable_entity
        end
    end

  private

  def order_params  
    params.permit(:quantity, :order_total)
  end
end
