class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.date :purchased_on
      t.integer :price
      t.integer :year
      t.integer :user_id

      t.timestamps
    end
  end
end
