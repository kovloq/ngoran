class CreateKorans < ActiveRecord::Migration
  def change
    create_table :korans do |t|
      t.string :name
      t.string :image
      t.string :website
      t.string :terbit

      t.timestamps null: false
    end
  end
end
