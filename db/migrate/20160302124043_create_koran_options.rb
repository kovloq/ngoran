class CreateKoranOptions < ActiveRecord::Migration
  def change
    create_table :koran_options do |t|
      t.integer :koran_id
      t.integer :koran_option_id
      t.integer :delivery_id

      t.timestamps null: false
    end
    add_column :customers, :latitude, :string
    add_column :customers, :longitude, :string
    add_column :customers, :image, :string
  end
end
