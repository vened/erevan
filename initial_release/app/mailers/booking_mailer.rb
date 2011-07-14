# encoding: utf-8
class BookingMailer < ActionMailer::Base
  default_url_options[:host] = "erevan-restoran.ru"

  default :from => "erevan@erevan.ru"

  def booking_confirmation(booking)
    @booking = booking
    mail(:to => "maxstbn@gmail.com, erevan7777777@gmail.com, gab26@yandex.ru, maxstbn@yandex.ru", :subject => "Новая заявка на бронирование стола")
    
    require "xmpp4r"
    robot = Jabber::Client::new(Jabber::JID::new("erevan_robot@jabber.ru"))
    robot.connect
    robot.auth("nfnkfrf")
    message = Jabber::Message::new("maxstbn@jabber.ru",
      "\nНовая заявка на бронирование стола!
      Заказчик: #{@booking.surname} #{@booking.name} #{@booking.patronymic}      
      Телефон: #{@booking.phone}
      Столик: #{@booking.table}")
    message.set_type(:chat)
    robot.send message
    
  end

end
