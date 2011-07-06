# encoding: utf-8
class Admin::BookingsController < ApplicationController

  def index
    @bookings = Booking.paginate :page => params[:page], :order => 'created_at DESC'
    render :layout => 'application'
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to :back
  end
end
