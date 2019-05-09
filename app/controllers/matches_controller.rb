class MatchesController < ApplicationController

  def new
    @match = Match.new
    @your_teams = HomeTeam.where(user_id: @logged_in_user_id)
  end

  def create
    @match = Match.create(match_params)
    find_winner
    redirect_to @match.home_team
  end

  def show
    @match = Match.find(params[:id])
  end

  def edit

  end



  private
  def match_params
    params.require(:match).permit(:home_team_id, :away_team_id)
  end

  def find_winner
    @home_values = @match.home_team.home_players.map do |player|
      player.value.to_i
    end
    @home_value_sum = @home_values.reduce{|sum, x| sum + x }

    @away_values = @match.away_team.away_players.map do |player|
      player.value.to_i
    end
    @away_value_sum = @away_values.reduce{|sum, x| sum + x }

    @total_values = @home_value_sum + @away_value_sum

    @home_odds = ((@home_value_sum.to_f / @total_values) * 100).round
    @away_odds = ((@away_value_sum.to_f / @total_values) * 100).round

    @odds_array = []

    @home_odds.times do
      @odds_array << "A"
    end

    @away_odds.times do
      @odds_array << "B"
    end

    @winner = @odds_array.sample
    if @winner == "A"
      @match.home_team.update_attributes(num_of_wins: (@match.home_team.num_of_wins + 1))
      flash[:win] = "Good job, you won!"
    else
      @match.home_team.update_attributes(num_of_losses: (@match.home_team.num_of_losses + 1))
      flash[:lose] = "You suck! You lost!"
    end
  end
end
