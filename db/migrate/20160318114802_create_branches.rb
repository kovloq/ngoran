class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :address
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
    add_column :users, :branch_id, :integer
    add_column :users, :name, :string
    execute 'ALTER TABLE `branches` CONVERT TO CHARACTER SET utf8';
  end
end
