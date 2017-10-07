module SessionsHelper
  def log_in(user)
    flash[:success] = 'You have successfully logged in'
    session[:user_id] = user.id
    redirect_to user_path(user)
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user ? true : false
  end
end
