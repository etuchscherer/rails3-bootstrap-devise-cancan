class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.integer :shop_id
      t.integer :work_id
      t.integer :cost
      t.integer :car_id

      t.timestamps
    end
  end
end
