# encoding: utf-8
class CartsController < ApplicationController

  before_filter :authenticate_user!

  def show
    #@cart = Cart.find(params[:id])
    @cart = current_cart.cart_items
    @menu = current_cart.menus
    render :layout => 'application_m'
  end

  def profile
    @cart = current_cart
    @user = current_user
    #redirect_to update_url
    render :layout => 'application_m'
  end

  def update
    @cart = current_cart
    @cart.update_attributes(params[:cart])
    redirect_to cart_send_url
  end

  def send_email
    @cart = current_cart.cart_items
    @menu = current_cart.menus
    @total_price = @menu.sum("price")
    @name = current_user
    CartMailer.cart_confirmation(@cart, @total_price, @name).deliver
    #@cart.destroy
    redirect_to cart_destroy_url, :notice => "Ваш заказ успешно оформлен, в ближайшее время с вами свяжется наш менеджер!"
  end

  def destroy
    @item = current_cart.cart_items
    for item in @item
      item.destroy
    end
    @cart = current_cart
    @cart.destroy
    redirect_to root_url
  end

end
