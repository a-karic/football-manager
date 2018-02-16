# Controller for creating and updating user
class UsersController < ApplicationController
  before_action :authorized?
  attr_reader :user

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    return errors user, :new unless user.save
    flash[:success] = 'You have created a new account'
    log_in user
  end

  def update
    @user = current_user
    return errors user, :settings unless user.update(update_params)
    flash[:success] = 'You have updated your account'
    redirect_to user_path(user)
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :current_password,
      :password_confirmation
    )
  end

  def update_params
    user_params.except(:current_password)
  end
end
