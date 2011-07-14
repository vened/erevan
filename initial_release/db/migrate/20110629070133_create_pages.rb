class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :meta_key
      t.string :meta_desc
      t.string :url
      t.string :title
      t.text :desc
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
