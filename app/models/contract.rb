class Contract < ApplicationRecord
  belongs_to :home_player
  belongs_to :home_team

  validates :home_team_id, uniqueness: { scope: :home_player_id, :message=>"You already added this player!"}
end
