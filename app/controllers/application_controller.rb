class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_cart
    @current_cart ||= Cart.first || Cart.create!
    #@current_cart.increment!(:quantity, 100)
  end

end
