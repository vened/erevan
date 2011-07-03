# encoding: utf-8
class PagesController < ApplicationController

	def home
		@page = Page.find_by_url('home')
		@images = @page.images
    @home = 1
    render :layout => 'application_h'
	end

	def restaurant
		@page = Page.find_by_url('restaurant')
    @images = @page.images
    @restaurant = 1
    render :layout => 'application_r'
	end
	
	def shashlyk
		@page = Page.find_by_url('shashlyk')
    @images = @page.images
    @shashlyk = 1
    render :layout => 'application_s'
  end

  def tour
		@page = Page.find_by_url('tour')
    @tour = 1
    render :layout => 'application_t'
  end

  def contacts
		@page = Page.find_by_url('contacts')
    @contacts = 1
    render :layout => 'application_с'
	end
	
end
