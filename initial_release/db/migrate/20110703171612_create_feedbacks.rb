class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.string :user
      t.text :desc
      t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end
end
