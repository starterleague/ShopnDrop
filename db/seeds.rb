# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all
Product.create :name => "Hockey Stick", :price => 4000
Product.create :name => "Remote Control", :price => 1999
Product.create :name => "iMac", :price => 119900
Product.create :name => "Lego Set", :price => 1500
Product.create :name => "Ice Cream", :price => 400
Product.create :name => "Desk", :price => 30000
Product.create :name => "Bike", :price => 25000
