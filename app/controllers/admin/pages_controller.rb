# encoding: utf-8
class Admin::PagesController < ApplicationController

  before_filter :authenticate_user!
		
	def index
    @pages = Page.all
		render :layout => 'application'
  end

	def show
    @page = Page.find(params[:id])
		render :layout => 'application'
  end

	def new
    @page = Page.new
		render :layout => 'application'
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to [:admin, @page], :notice => "Странца успешно создана"
    else
      render :layout => 'application'
    end
  end

  def edit
    @page = Page.find(params[:id])
		render :layout => 'application'
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      redirect_to [:admin, @page], :notice  => "Странца успешно обновлена"
    else
      render :layout => 'application'
    end
  end

end
