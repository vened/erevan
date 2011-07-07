class MenuCategoriesController < ApplicationController

  def show
    @menu_categories = MenuCategory.all
    @menu_category = MenuCategory.find(params[:id])
    @menus = @menu_category.menus
    render :layout => 'application_m'
  end

end
