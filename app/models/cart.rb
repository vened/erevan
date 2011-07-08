# encoding: utf-8
class Cart < ActiveRecord::Base
  attr_accessible :authenticity_token, :name, :phone

  has_many :cart_items
  has_many :menus, :through => :cart_items

end
