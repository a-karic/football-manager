# Controller for login and logout
class SessionsController < ApplicationController
  before_action :authorized?
  attr_reader :user

  def new; end

  def create
    @user = User.find_by(email: session_params[:email])
    return session_errors 'No account found' unless user
    return session_errors 'Wrong email or password' unless user_authenticated
    log_in user
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

  def user_authenticated
    user.authenticate(session_params[:password])
  end

  def session_errors(message)
    args = {
      flash: message,
      render: :new,
      status: :unprocessable_entity
    }
    custom_errors args
  end
end
