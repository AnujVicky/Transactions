require 'bcrypt'

class User < ApplicationRecord
has_many :invoices
   include BCrypt
   #attr_accessor :password
   validates_uniqueness_of :email, :case_sensitive => false

   # attr_accessible :password, :confirm_password
validates :name, presence: true
validates :email, presence: true
validates :password, presence: true
#validates :password_confirmation, :presence => true
#validates :password_confirmation, presence: true
#validates_length_of :password, :in => 4..10, :on => :create


#validates_confirmation_of :password, :confirm_password, :message => "should match confirmation"
  has_secure_password
end
