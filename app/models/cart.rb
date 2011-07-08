class Cart < ActiveRecord::Base
  attr_accessible :token

  has_many :cart_items
  has_many :menus, :through => :cart_items

end
