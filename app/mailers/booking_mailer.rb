class BookingMailer < ActionMailer::Base
  default_url_options[:host] = "localhost:3000"

  default :from => "ryan@railscasts.com"

  def booking_confirmation(booking)
    @booking = booking
    mail(:to => "maxstbn@gmail.com", :subject => "Registered")
  end

end
