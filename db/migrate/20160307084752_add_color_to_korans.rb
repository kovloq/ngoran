class AddColorToKorans < ActiveRecord::Migration
  def change
    add_column :korans, :color, :string
  end
end
