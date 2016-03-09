class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.date :tanggal
      t.string :event
      t.boolean :tipe

      t.timestamps null: false
    end
    execute 'ALTER TABLE `calendars` CONVERT TO CHARACTER SET utf8';
  end
end
