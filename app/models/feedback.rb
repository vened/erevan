# encoding: utf-8
class Feedback < ActiveRecord::Base
  attr_accessible :user, :desc
  validates_length_of :user, :in => 3..25, :message => "Имя должно быть длинной не менее 3-х и не более 25 символов"
  validates_length_of :desc, :in => 10..1000, :message => "Отзыв должен быть длинной не менее 10 и не более 1000 символов"
  cattr_reader :per_page
  @@per_page = 5
end
