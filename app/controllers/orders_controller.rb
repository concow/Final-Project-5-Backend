class OrdersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    skip_before_action :authorized

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
        # byebug
        render json: order, status: :created
    end

  private

    def order_params  
       #params.permit(:quantity, :order_total)
        params.permit(:user_id, :quantity, :price, :company, :order)
    end
    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity 
    end

    def render_not_found_response
        render json: { error: "Order not found" }, status: :not_found 
    end 
end
