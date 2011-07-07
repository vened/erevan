class Menu < ActiveRecord::Base
  attr_accessible :image, :title, :desc, :price, :menu_category_id
  mount_uploader :image, ImageUploader
  belongs_to :menu_category
  cattr_reader :per_page
  @@per_page = 3
end
