# encoding: utf-8
class CartItemsController < ApplicationController

  def create
    current_cart.cart_items.create!(params[:cart_item])
    #session[:last_menu_page] = request.env['HTTP_REFERER'] || menu_url
    redirect_to :back, :notice => "Товар добавлен в корзину!"
  end

  def show
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to :back
  end

end
