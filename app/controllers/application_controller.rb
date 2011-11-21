class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :cart
  
  def cart
    logger.debug "Accessing the cart..."
    session[:cart_id] ||= Cart.create.id
    logger.debug "The cart id: #{session[:cart_id]}"
    @cart = Cart.find(session[:cart_id])
  end
  
end
