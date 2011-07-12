# encoding: utf-8
class CartItemsController < ApplicationController

  before_filter :authenticate_user!

  def create
    #current_cart.cart_items.create!(params[:cart_item])

    @id = params[:cart_item][:menu_id]
    @product = Menu.find(@id)
    if current_cart.cart_items.exists?(:menu_id => @id)
      item = current_cart.cart_items.find_or_initialize_by_menu_id(:menu_id => @product, :quantity => 0)
      item.increment! :quantity
    else
      current_cart.cart_items.create!(params[:cart_item])
    end

    redirect_to :back
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update_attributes(params[:cart_item])
#    @cart = current_cart
#    @cart.update_attributes(params[:cart])
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def show
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to :back
  end

end
