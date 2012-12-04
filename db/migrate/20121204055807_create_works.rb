class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :component

      t.timestamps
    end
  end
end
