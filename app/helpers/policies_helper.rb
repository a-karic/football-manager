module PoliciesHelper
  def render_422
    render html: 'You can not access to this page', status: :unprocessable_entity
  end

  def authorized?
     render_422 unless "#{controller_name.humanize.singularize}Policy".constantize.new(current_user, params).public_send(params[:action] + '?')
  end

end
