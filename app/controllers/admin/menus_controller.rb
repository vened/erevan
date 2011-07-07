# encoding: utf-8
class Admin::MenusController < ApplicationController

  before_filter :authenticate_user!

  def index
    @menus = Menu.paginate :page => params[:page], :order => 'created_at DESC'
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(params[:menu])
    if @menu.save
      redirect_to admin_menus_url, :notice  => "Новое блюдо успешно созданно"
    else
      render :action => 'new'
    end
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update_attributes(params[:menu])
      redirect_to admin_menus_url, :notice  => "Блюдо успешно обновлено"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to admin_menus_url, :notice => "Блюдо успешно удалено."
  end
end
