class HomeTeam < ApplicationRecord
  belongs_to :user
  has_many :contracts, :dependent => :delete_all
  has_many :home_players, through: :contracts
  has_many :matches
end
