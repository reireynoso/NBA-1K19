class HomeTeamsController < ApplicationController

  def index
    @teams = HomeTeam.select {|team| team.user_id == @logged_in_user_id}
  end

  def new
    @home_team = HomeTeam.new
    @users = []
    @users << @logged_in_user
  end

  def create
    @home_team = HomeTeam.create(home_team_params.merge(num_of_wins: 0, num_of_losses: 0))
    if @home_team.valid?
      redirect_to @home_team
    else
      render :new
    end
  end

  def show
    @home_team = HomeTeam.find(params[:id])
  end

  def destroy
    Match.where(home_team_id: params[:id]).destroy_all
    HomeTeam.destroy(params[:id])
    redirect_to home_teams_path
  end



  private
  def home_team_params
    params.require(:home_team).permit(:name, :location, :user_id, :num_of_wins, :num_of_losses)
  end
end
