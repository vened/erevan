class Page < ActiveRecord::Base
  attr_accessible :meta_key, :meta_desc, :url, :title, :desc

	has_many :asset
end
