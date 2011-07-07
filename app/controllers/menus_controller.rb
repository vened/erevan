class MenusController < ApplicationController

  def index
    @menus = Menu.all
    render :layout => 'application_m'
  end

end
