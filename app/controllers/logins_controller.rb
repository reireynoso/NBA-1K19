class LoginsController < ApplicationController
  skip_before_action :require_login, only: [:new,:create, :welcome]

  def new

  end

  def welcome
    
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      log_in_user(@user.id)
      redirect_to home_teams_path
    else
      render :new
    end
  end

  def destroy
    log_out_user
    redirect_to root_path
  end

end
