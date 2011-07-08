# encoding: utf-8
class CartsController < ApplicationController

  def show
    #@cart = Cart.find(params[:id])
    @cart = current_cart.cart_items
    @menu = current_cart.menus
    @total_price = @menu.sum("price")
    render :layout => 'application_m'
  end

#  def edit
#    @page = Page.find(params[:id])
#		render :layout => 'application'
#  end

  def profile
    @cart = current_cart
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
    @name = current_cart
    CartMailer.cart_confirmation(@cart, @total_price, @name).deliver
    redirect_to :back, :notice => "Ваша заказ успешно оформлен, в ближайшее время с вами свяжется наш менеджер!"
  end

end
