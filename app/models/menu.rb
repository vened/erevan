class Menu < ActiveRecord::Base
  attr_accessible :image, :title, :desc, :price
  mount_uploader :image, ImageUploader
  cattr_reader :per_page
  @@per_page = 3
end
