class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.string :surname
      t.string :name
      t.string :patronymic
      t.integer :phone
      t.integer :table
      t.string :date
      t.string :time

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
