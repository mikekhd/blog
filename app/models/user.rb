class User < ActiveRecord::Base
  attr_accessible :admin, :email, :moderator, :name, :password, :password_confirmation, :author
   has_secure_password
   has_many :atom_users
   has_many :atoms, through: :atom_users
end
