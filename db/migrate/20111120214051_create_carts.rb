class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :total
      t.string :card_number
      t.string :email

      t.timestamps
    end
  end
end
