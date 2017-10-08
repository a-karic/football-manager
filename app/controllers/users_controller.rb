class UsersController < ApplicationController
  before_action :authorized?

  def new
    @user = User.new
  end

  def settings
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'You have created a new account'
      log_in @user
    else
      flash.now[:alert] = @user.errors.to_a
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @user = current_user
    if @user.update(user_params.except(:current_password))
      flash[:success] = 'You have updated your account'
      redirect_to user_path(@user)
    else
      flash.now[:alert] = @user.errors.to_a
      render :settings, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email,
                                 :password,
                                 :current_password,
                                 :password_confirmation
                                )
  end
end
