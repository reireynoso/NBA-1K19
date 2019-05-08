class ContractsController < ApplicationController



  def new
    find_players
    @contract = Contract.new
    @your_teams = HomeTeam.all.select{|team| team.user_id == @logged_in_user_id}
  end

  def create
    find_players
    @your_teams = HomeTeam.all.select{|team| team.user_id == @logged_in_user_id}
    @contract = Contract.create(contract_params)
    @home_team = HomeTeam.find(@contract.home_team.id)
    if @contract.valid? && @home_team.home_players.length == 5
      redirect_to home_team_path(@contract.home_team)
    elsif @home_team.home_players.length < 5
      redirect_to new_contract_path
    else
      render :new
    end
  end



  private
  def contract_params
    params.require(:contract).permit(:home_team_id, :home_player_id)
  end

  def find_players
    @point_guards = HomePlayer.all.select {|player| player.position == "PG"}
    @shooting_guards = HomePlayer.all.select {|player| player.position == "SG"}
    @small_forwards = HomePlayer.all.select {|player| player.position == "SF"}
    @power_forwards = HomePlayer.all.select {|player| player.position == "PF"}
    @centers = HomePlayer.all.select {|player| player.position == "C"}
  end

end
