class HomePlayer < ApplicationRecord
  has_many :contracts, :dependent => :delete_all
  has_many :home_teams, through: :contracts
end
