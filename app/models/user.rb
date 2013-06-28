class User < ActiveRecord::Base
  attr_accessible :admin, :email, :moderator, :name
end
