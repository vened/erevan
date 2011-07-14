class Image < ActiveRecord::Base
	attr_accessible :image, :page_id
	mount_uploader :image, ImageUploader
	validates_presence_of :image
  belongs_to :page, :polymorphic => true
end
