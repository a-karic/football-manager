class UserPolicy
  attr_reader :current_user, :params_id

  def initialize(current_user, params = nil)
    @current_user = current_user
    @params_id = params[:id].to_i
  end

  def new?
    current_user ? false : true
  end

  alias :create? :new?

  def settings?
    current_user ? true : false
  end

  def update?
    if current_user.id == params_id
      true
    else
      false
    end
  end

  def show?
    if current_user.id == params_id
      true
    else
      false
    end
  end

end
