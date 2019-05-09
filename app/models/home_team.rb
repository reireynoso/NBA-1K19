class HomeTeam < ApplicationRecord
  belongs_to :user
  has_many :contracts
  has_many :home_players, through: :contracts
  has_many :matches

  validates_presence_of :name, :location
end
