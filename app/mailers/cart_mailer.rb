# encoding: utf-8
class CartMailer < ActionMailer::Base

  default_url_options[:host] = "localhost:3000"

  default :from => "ryan@railscasts.com"

  def cart_confirmation(cart, total_price, name)
    @cart = cart
    @total_price = total_price
    @name = name
    mail(:to => "maxstbn@gmail.com", :subject => "Новый заказ")
  end

end