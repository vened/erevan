# encoding: utf-8
class Admin::MenusController < ApplicationController

  before_filter :authenticate

  def restaurant_menu
    @menus = Menu.find_all_by_url('restaurant_menu')
    render :layout => 'admin'
  end

  def shashlyk_menu
    @menus = Menu.find_all_by_url('shashlyk_menu')
    render :layout => 'admin'
  end

  def flowers
    @menus = Menu.find_all_by_url('flowers')
    render :layout => 'admin'
  end

  def flowers_new
    @menu = Menu.new
    render :layout => 'admin'
  end

  def flowers_edit
    @menu = Menu.find(params[:id])
    render :layout => 'admin'
  end

  def index
    @menus = Menu.paginate :page => params[:page], :order => 'created_at DESC'
    render :layout => 'admin'
  end

  def new
    @menu = Menu.new
    @menu_categories = MenuCategory.all
    render :layout => 'admin'
  end

  def create
    @menu = Menu.new(params[:menu])
    if @menu.save
      redirect_to :back, :notice  => "Успешно сохранено, создать ещё?"
    else
      render :action => 'new'
    end
  end

  def edit
    @menu = Menu.find(params[:id])
    @menu_categories = MenuCategory.all
    render :layout => 'admin'
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update_attributes(params[:menu])
      redirect_to :back, :notice  => "Успешно обновлено"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to :back, :notice => "Успешно удалено."
  end
end
