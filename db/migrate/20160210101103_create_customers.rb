class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :building_name
      t.string :room_number

      t.timestamps null: false
    end
    execute 'ALTER TABLE `customers` CONVERT TO CHARACTER SET utf8';
  end
end
