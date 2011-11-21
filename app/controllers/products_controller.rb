class ProductsController < ApplicationController

  def index
    @products = Product.order('name asc')
  end

end
