# encoding: utf-8
#      t.string :surname
#      t.string :name
#      t.string :patronymic
#      t.string :phone
#      t.string :table
#      t.string :date
#      t.string :time
class Booking < ActiveRecord::Base
  attr_accessible :surname, :name, :patronymic, :phone, :table, :date, :time
  validates_length_of :surname, :in => 2..25, :message => "Фамилия должно быть длинной не менее 2-х и не более 25 символов"
  validates_length_of :name, :in => 2..25, :message => "Имя должно быть длинной не менее 2-х и не более 25 символов"
  validates_length_of :patronymic, :in => 2..25, :message => "Отчество должно быть длинной не менее 2-х и не более 25 символов"
  validates_length_of :phone, :in => 6..12, :message => "Номер телефона должен быть длинной не менее 6 и не более 12 цифр"
  validates_length_of :time, :in => 2..25, :message => "Неправильно указанно время"
  validates_numericality_of :table, :only_integer => true, :message => "6 и не более 12 цифр"
  validates_length_of :date, :in => 2..25, :message => "Неправильно указанна дата"
  cattr_reader :per_page
  @@per_page = 10
end
