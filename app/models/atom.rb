class Atom < ActiveRecord::Base
  attr_accessible :story, :title, :approved, :user_ids
  has_many :atom_users
  has_many :users, through: :atom_users
end
