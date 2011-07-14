# encoding: utf-8
class Admin::GuestsController < ApplicationController

  before_filter :authenticate

  def index
    @guests = Guest.paginate :page => params[:page], :order => 'created_at DESC'
    render :layout => 'admin'
  end

  def new
    @guest = Guest.new
    render :layout => 'admin'
  end

  def create
    @guest = Guest.new(params[:guest])
    #render :layout => 'admin'
    if @guest.save
      redirect_to admin_guests_path
    else
      redirect_to new_admin_guest_path
    end
  end

  def edit
    @guest = Guest.find(params[:id])
    render :layout => 'admin'
  end

  def update
    @guest = Guest.find(params[:id])
    if @guest.update_attributes(params[:guest])
      redirect_to admin_guests_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
    redirect_to admin_guests_path
  end
end
