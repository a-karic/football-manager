# Helper methods for sesions
module SessionsHelper
  def post_session_params(user)
    post sessions_path, params: {
      session: {
        email: user.email,
        password: user.password
      }
    }
  end
end
