# encoding: utf-8
class PagesController < ApplicationController

	def home
		@pages = Page.all
		@page = Page.find_by_url('home')
		@images = @page.images
	end

	def restaurant
    @pages = Page.all
		@page = Page.find_by_url('restaurant')
    @images = @page.images
	end
	
	def shashlyk
    @pages = Page.all
		@page = Page.find_by_url('shashlyk')
    @images = @page.images
	end
	
end
