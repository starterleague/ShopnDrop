class CartController < ApplicationController
  
  layout nil
  
  def destroy
    reset_session
    redirect_to root_url
  end
  
end