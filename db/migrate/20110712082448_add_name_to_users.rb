class AddNameToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :lastname, :string
    add_column :users, :phone, :integer
  end

  def self.down
    remove_column :users, :phone
    remove_column :users, :lastname
    remove_column :users, :surname
    remove_column :users, :name
  end
end
