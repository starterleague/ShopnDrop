class CartItem < ActiveRecord::Base
  
  belongs_to :cart
  belongs_to :product
  
  after_create :add_to_cart_total
  after_destroy :decrease_cart_total

  validates_presence_of :cart
  validates_presence_of :product
  
  def add_to_cart_total
    cart.total ||= 0
    cart.total += self.price
    cart.save
    # cart.total += self.price
  end
  
  def decrease_cart_total
    cart.total -= self.price
    cart.save
  end
  
end
