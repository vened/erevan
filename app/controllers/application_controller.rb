class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_cart
    @current_cart ||= Cart.first || Cart.create!
    #@current_cart.increment!(:quantity, 100)
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "admin"
    end
  end

end
