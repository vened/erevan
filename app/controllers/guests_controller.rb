class GuestsController < ApplicationController
  def index
    @guests = Guest.paginate :page => params[:page], :order => 'created_at DESC'
    @guest = 1
  end
end
