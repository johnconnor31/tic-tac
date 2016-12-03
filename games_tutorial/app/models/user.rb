class User < ApplicationRecord
  attr_accessor :password
  validates_presence_of :password
  validates_confirmation_of :password
  validates_uniqueness_of :name
  validates_presence_of :name
  before_save :encrypt_pwd
  def self.authenticate(name , password)
    user = find_by_name(name)
    if  user 
      user
    else 
       nil
    end
  end
  private 
  def encrypt_pwd
  self.password_salt = BCrypt:: Engine.generate_salt
  self.password_hash = BCrypt:: Engine.hash_secret(:password, self.password_salt)
  end

end
