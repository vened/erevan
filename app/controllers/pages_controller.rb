# encoding: utf-8
class PagesController < ApplicationController

	def home
		@page = Page.find_by_url('home')
		@title = "Главная"
	end

	def restaurant
		@page = Page.find_by_url('restaurant')
	end
	
	def shashlyk
		@page = Page.find_by_url('shashlyk')
	end
	
end
