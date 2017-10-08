class SessionsController < ApplicationController
  before_action :authorized?

  def new
  end

  def create
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
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
  def session_params
    params.require(:session).permit(:email, :password)
  end
end
