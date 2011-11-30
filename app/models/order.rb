class Order < ActiveRecord::Base
  
  scope :unprocessed, where(:tracking_number => nil)
  
  belongs_to :cart
  
  def ship
    self.tracking_number = "1Z#{rand(100000)}"
    self.save
  end
  
  validates_presence_of :email
  validates_presence_of :card_number
  
  delegate :total, :to => :cart
end
