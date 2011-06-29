# encoding: utf-8
class Admin::PagesController < ApplicationController
		
	def index
    @pages = Page.all
		render :layout => 'admin'
  end

	def show
    @page = Page.find(params[:id])
		render :layout => 'admin'
  end

	def new
    @page = Page.new
		render :layout => 'admin'
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to [:admin, @page], :notice => "Странца успешно создана"
    else
      render :action => 'new'
    end
  end

  def edit
    @page = Page.find(params[:id])
		render :layout => 'admin'
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      redirect_to [:admin, @page], :notice  => "Странца успешно обновлена"
    else
      render :action => 'edit'
    end
  end

end
