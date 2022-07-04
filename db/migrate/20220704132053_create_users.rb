class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :interest_1
      t.string :interest_2

      t.timestamps
    end
  end
end
