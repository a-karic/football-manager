class UserPolicy
  attr_reader :current_user, :params_id

  def initialize(current_user, params = nil)
    @current_user = current_user
    @params_id = params[:id].to_i
  end

  def new?
    current_user ? false : true
  end

  def show?
    current_user.id == params_id
  end

  alias create? new?
  alias edit? show?
  alias update? show?
end
