class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.float :price
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
