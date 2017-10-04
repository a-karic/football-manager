class SessionsController < ApplicationController
  include SessionsHelper
  before_action :check_if_logged_in, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(email: sessions_params[:email])
    if @user && @user.authenticate(sessions_params[:password])
      log_in @user
    else
      flash[:alert] = 'Wrong email or password'
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have logged out'
    redirect_to new_session_path
  end

  private
  def sessions_params
    params.require(:session).permit(:email, :password)
  end

  def check_if_logged_in
    if logged_in?
      flash[:alert] = 'You are already logged in'
      redirect_to root_path
    end
  end

end
