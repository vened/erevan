# encoding: utf-8
class Admin::BookingsController < ApplicationController

  #before_filter :authenticate_user!

  before_filter :authenticate

  def index
    @bookings = Booking.paginate :page => params[:page], :order => 'created_at DESC'
    render :layout => 'admin'
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to :back
  end
end
