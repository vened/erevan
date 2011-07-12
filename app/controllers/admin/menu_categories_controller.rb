class Admin::MenuCategoriesController < ApplicationController

  before_filter :authenticate

  def index
    @menu_categories = MenuCategory.all
    render :layout => 'admin'
  end

  def new
    @menu_category = MenuCategory.new
    render :layout => 'admin'
  end

  def create
    @menu_category = MenuCategory.new(params[:menu_category])
    if @menu_category.save
      redirect_to admin_menu_categories_url
    else
      render :action => 'new'
    end
  end

  def edit
    @menu_category = MenuCategory.find(params[:id])
    render :layout => 'admin'
  end

  def update
    @menu_category = MenuCategory.find(params[:id])
    if @menu_category.update_attributes(params[:menu_category])
      redirect_to admin_menu_categories_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @menu_category = MenuCategory.find(params[:id])
    @menu_category.destroy
    redirect_to admin_menu_categories_url
  end
end
