class Api::V1::OrdersController < ApplicationController
    
  def index
    @orders = Order.all
  end
  
  def show
    @id = params[:id]
    if Order.exists?(@id)
        @order = Order.find(@id)
    else
      @order = Order.new(id: @id, status: "Invalid order number")
    end
  end

end
