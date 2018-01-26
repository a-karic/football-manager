# Helper for users testing
module UsersHelper
  def log_in(user)
    post sessions_path, params:
      { session: { email: user.email, password: user.password } }
    user
  end

  def post_user_params(user)
    post users_path, params: {
      user: user_params(user)
    }
  end

  def patch_user_params(user, attr)
    patch user_path(user), params: {
      user: update_params(user, attr)
    }
  end

  private

  def user_hash
    {
      email: :email,
      password: :password,
      password_confirmation: :password
    }
  end

  def user_params(user)
    result = {}
    user_hash.each do |key, value|
      result[key] = user.send(value)
    end
    result
  end

  def update_params(user, attr)
    output = user_params(user)
    attr.each do |key, value|
      output[key] = value
    end
    output
  end
end
