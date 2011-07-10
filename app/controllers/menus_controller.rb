class MenusController < ApplicationController

#  def index
#    @menus = Menu.all
#    @menu_categories = MenuCategory.all
#    render :layout => 'application_m'
#  end

  def restaurant_menu
    @menus = Menu.find_all_by_url('restaurant_menu')
    @menu_categories = MenuCategory.all
    render :layout => 'application_m'
  end

  def shashlyk_menu
    @menus = Menu.find_all_by_url('shashlyk_menu')
    @menu_categories = MenuCategory.all
    render :layout => 'application_m'
  end

  def flowers
    @menus = Menu.find_all_by_url('flowers')
    @menu_categories = MenuCategory.all
    render :layout => 'application_m'
  end

end
