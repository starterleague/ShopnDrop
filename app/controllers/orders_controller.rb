class OrdersController < ApplicationController
  
  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(params[:order])
    @order.cart = cart
    
    if @order.save
      redirect_to root_url, :notice => "Thanks for your order!"
    else
      logger.debug "Order could not be saved"
      respond_to do |format|
        format.js
      end
    end
    
  end
end