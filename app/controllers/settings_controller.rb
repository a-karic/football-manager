# Controller for user settings  page
class SettingsController < ApplicationController
  before_action :authorized?

  def index
    @user = current_user
  end
end
