class Menu < ActiveRecord::Base
  attr_accessible :image, :title, :desc, :price, :menu_category_id, :url
  mount_uploader :image, ImageUploader
  belongs_to :menu_category
  has_many :cart_items
  cattr_reader :per_page
  @@per_page = 10
end
