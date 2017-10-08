class SessionPolicy
  attr_reader :current_user

  def initialize(current_user, params = nil)
    @current_user = current_user
  end

  def new?
    current_user ? false : true
  end

  alias :create? :new?

  def destroy?
    current_user ? true : false
  end
end
