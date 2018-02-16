# Controller for user settings  page
class SettingsController < ApplicationController
  before_action :authorized?
  attr_reader :settings_form

  def index
    @settings_form = SettingsForm.new
    binding.pry
  end

  def create
    @settings_form = SettingsForm.new(test_params)
    # return errors settings_form, :index unless settings_form.valid?
    # settings_form.save
  end

  private

  def settings_params
    params.require(:settings_form).permit(
      :email,
      :first_name,
      :last_name,
      :city,
      :country
    )
  end

  def test_params
    {
      first_name: 'almin',
      last_name: 'karic',
      email: 'almin@miavision.net'
    }
  end
end
