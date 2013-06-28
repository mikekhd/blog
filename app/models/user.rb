class User < ActiveRecord::Base
  attr_accessible :admin, :email, :moderator, :name, :password, :password_confirmation
   has_secure_password
end
