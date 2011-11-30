namespace :myapp do

  desc "Ship all orders waiting to be processed"
  task :process_orders => :environment do
    Order.unprocessed.each do |order|
      order.ship
    end
  end
  
  desc "Start to learn about rake"
  task :say_hello do
    puts "Hello There!"
  end

  desc "Stop learning"
  task :leave_room => :say_hello do
    puts "I'm outta here!"
  end

end