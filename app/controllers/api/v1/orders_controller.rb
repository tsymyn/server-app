class Api::V1::OrdersController < ApplicationController
    
  def index
    @orders = Order.all
  end
  
  def show
    if Order.exists?(params[:id])
        @order = Order.find(params[:id])
    else
      @order = Order.new(id: params[:id], status: "Invalid order number")
    end
  end

end
