# Policy for settings controller
class SettingPolicy
  attr_reader :current_user, :params_id

  def initialize(current_user, params = nil)
    @current_user = current_user
    @params_id = params[:id].to_i
  end

  def index?
    current_user ? true : false
  end
end
