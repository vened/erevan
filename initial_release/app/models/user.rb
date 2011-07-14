# encoding: utf-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :surname, :name, :lastname, :phone

  validates_length_of :username, :in => 5..15, :message => "Логин должен быть длинной не менее 3-х и не более 15 символов"
  validates_length_of :surname, :in => 2..20, :message => "Фамилия должна быть длинной не менее 2-х и не более 20 символов"
  validates_length_of :name, :in => 2..20, :message => "Имя должно быть длинной не менее 2-х и не более 20 символов"
  validates_length_of :lastname, :in => 2..20, :message => "Отчество должно быть длинной не менее 2-х и не более 20 символов"
  validates_numericality_of :phone, :only_integer => true, :message => "Номер телефона пишется цифрами"

end
