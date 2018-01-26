# Shared messages in controllers
module Messages
  extend ActiveSupport::Concern

  def errors(instance, path)
    flash.now[:alert] = instance.errors.to_a
    render path, status: :unprocessable_entity
  end

  def custom_errors(args)
    flash.now[:alert] = args[:flash]
    render args[:render], status: args[:status]
  end
end
