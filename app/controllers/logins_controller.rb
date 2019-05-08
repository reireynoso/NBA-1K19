class LoginsController < ApplicationController
  skip_before_action :require_login, only: [:new,:create, :welcome]

  def new

  end

  def welcome

  end

  def create
    @user = User.find_by(username: params[:username])
    # byebug
    if @user && @user.authenticate(params[:password])
      log_in_user(@user.id)
      redirect_to home_teams_path
    end
  end

  def destroy
    log_out_user
    redirect_to root_path
  end

end
