class CartItem < ActiveRecord::Base
  attr_accessible :menu_id, :cart_id, :quantity
  belongs_to :menu
  belongs_to :cart

  before_create :default_quantity_to_one

  def unit_price
    menu.price
  end

  def full_price
    unit_price*quantity
  end

  private

  def default_quantity_to_one
    self.quantity ||= 1
  end
end
