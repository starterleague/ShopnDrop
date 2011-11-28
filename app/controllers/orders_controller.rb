class OrdersController < ApplicationController
  
  def new
    @order = Order.new
    render :layout => nil
  end
  
  def create
    @order = Order.new(params[:order])
    @order.cart = cart
    if @order.save
      reset_session
      flash[:notice] = "Thanks for placing your order!"
      respond_to do |format|
        format.js 
      end
    else
      respond_to do |format|
        format.js { render :new, :layout => nil }
      end
    end
  end
  
end