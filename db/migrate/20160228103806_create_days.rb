class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :name
      t.string :name_kana

      t.timestamps null: false
    end
    execute 'ALTER TABLE `days` CONVERT TO CHARACTER SET utf8';
  end
end
