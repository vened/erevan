class MenuCategoriesController < ApplicationController

  def show
    @menu_categories = MenuCategory.all
    @menu_category = MenuCategory.find(params[:id])
    @menus = @menu_category.menus
#    current_cart.cart_items.create!(params[:cart_item])
#    flash[:notice] = "Product added to cart"
#    session[:last_menu_page] = request.env['HTTP_REFERER'] || menu_url
    #redirect_to current_cart_url
    render :layout => 'application_m'
  end

end
