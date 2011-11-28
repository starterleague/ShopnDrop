class Order < ActiveRecord::Base
  
  belongs_to :cart
  
  validates_presence_of :email
  validates_presence_of :card_number
  
  delegate :total, :to => :cart
end
