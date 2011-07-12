# encoding: utf-8
class Admin::ImagesController < ApplicationController

  before_filter :authenticate

	def index
    @page = Page.find(params[:page_id])
    @image = Image.new(params[:id])
    @images = @page.images
		render :layout => 'application'
  end

	def create
		@page = Page.find(params[:page_id])
		@image = @page.images.create(params[:image])
		render :layout => 'application'
	end


  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to admin_page_images_path
  end

end
