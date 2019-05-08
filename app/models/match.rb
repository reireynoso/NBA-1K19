class Match < ApplicationRecord
  belongs_to :away_team
  belongs_to :home_team
end
