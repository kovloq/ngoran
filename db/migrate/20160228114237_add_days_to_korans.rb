class AddDaysToKorans < ActiveRecord::Migration
  def change
    add_column :korans, :monday, :boolean
    add_column :korans, :tuesday, :boolean
    add_column :korans, :wednesday, :boolean
    add_column :korans, :thursday, :boolean
    add_column :korans, :friday, :boolean
    add_column :korans, :saturday, :boolean
    add_column :korans, :sunday, :boolean
  end
end
