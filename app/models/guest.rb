class Guest < ActiveRecord::Base
  attr_accessible :image, :title, :data
  mount_uploader :image, ImageUploader
	validates_presence_of :image
  cattr_reader :per_page
  @@per_page = 9
end
