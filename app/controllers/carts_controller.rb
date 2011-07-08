class CartsController < ApplicationController
  def show
    #@cart = Cart.find(params[:id])
    @cart = current_cart.cart_items
    @menu = current_cart.menus
    @total_price = @menu.sum("price")
    render :layout => 'application_m'
  end
end
