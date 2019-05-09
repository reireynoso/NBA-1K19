class User < ApplicationRecord
  has_many :home_teams
  validates_uniqueness_of :username
  has_secure_password
end
