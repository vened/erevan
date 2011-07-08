class CartItemsController < ApplicationController
#  def create
#    @cart_item = CartItem.new(params[:cart_item])
#    if @cart_item.save
#      redirect_to root_url, :notice => "Successfully created cart item."
#    else
#      render :action => 'new'
#    end
#  end

  def create
    current_cart.cart_items.create!(params[:cart_item])
    session[:last_menu_page] = request.env['HTTP_REFERER'] || menu_url
    redirect_to current_cart
  end
end
