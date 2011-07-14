class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_cart

    @user_id = current_user.id

    def create_cart
      #Cart.create!
      Cart.create(:session_id => @user_id)
    end

    def cart_find
      Cart.find_by_session_id(@user_id)
    end

    @current_cart ||= cart_find || create_cart

    #@current_cart ||= Cart.find_by_session_id(@user_id) || Cart.create!
    #@current_cart.increment!(:quantity, 100)
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "gab26" && password == "07.07.1997yan."
    end
  end

end
