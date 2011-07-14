# encoding: utf-8
class CartMailer < ActionMailer::Base

  default_url_options[:host] = "erevan-restoran.ru"

  default :from => "erevan@erevan.ru"

  def cart_confirmation(cart, total_price, name)
    @cart = cart
    @total_price = total_price
    @name = name
    mail(:to => "maxstbn@gmail.com, erevan7777777@gmail.com, gab26@yandex.ru, maxstbn@yandex.ru", :subject => "Новый заказ")

    require "xmpp4r"
    robot = Jabber::Client::new(Jabber::JID::new("erevan_robot@jabber.ru"))
    robot.connect
    robot.auth("nfnkfrf")
    message = Jabber::Message::new("maxstbn@jabber.ru",
      "\nПоступил новый заказ!
      Заказчик: #{@name.surname} #{@name.name} #{@name.lastname}
      Телефон: #{@name.phone}")
    message.set_type(:chat)
    robot.send message

  end

end