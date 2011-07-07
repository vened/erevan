class MenusController < ApplicationController

  def index
    @menus = Menu.all
    @menu_categories = MenuCategory.all
    render :layout => 'application_m'
  end

end
