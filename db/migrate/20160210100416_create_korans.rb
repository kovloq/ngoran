class CreateKorans < ActiveRecord::Migration
  def change
    create_table :korans do |t|
      t.string :name
      t.string :image
      t.string :website
      
      t.boolean :day_id

      t.timestamps null: false
    end
    execute 'ALTER TABLE `korans` CONVERT TO CHARACTER SET utf8';
  end
end
