class AtomUser < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :atom
  belongs_to :user
end
