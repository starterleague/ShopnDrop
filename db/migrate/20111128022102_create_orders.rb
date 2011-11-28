class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.string :email
      t.string :card_number
      t.string :tracking_number

      t.timestamps
    end
  end
end
