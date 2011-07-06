# encoding: utf-8
class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @booking = Booking.new
    render :layout => 'application_b'
  end

  def create
    @booking = Booking.new(params[:booking])

    if @booking.save
      BookingMailer.booking_confirmation(@booking).deliver
      redirect_to bookings_url, :notice => "Ваша заявка успешно отправлена!"
    else
      render :layout => 'application_b'
    end
  end
end
