class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.string :image
      t.string :title
      t.text :desc
      t.string :price
      t.references :menu_category
      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
