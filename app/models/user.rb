class User < ApplicationRecord
  has_many :home_teams
  has_secure_password
end
