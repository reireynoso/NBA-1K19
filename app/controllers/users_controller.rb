class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new,:create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(check_params)
    if @user.valid?
      log_in_user(@user.id)
      redirect_to home_teams_path
    else
      render :new
    end
  end

  def destroy
    redirect_to controller: "sessions", action: "destroy"
  end


  private

  def check_params
    params.require(:user).permit(:username, :password)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
