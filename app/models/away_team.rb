class AwayTeam < ApplicationRecord
  has_many :matches
  has_many :away_players
end
