class News < ActiveRecord::Base
  attr_accessible :title, :note, :desc
  cattr_reader :per_page
  @@per_page = 10
end
