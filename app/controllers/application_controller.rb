class ApplicationController < ActionController::Base
  before_action :configure_permitted_paramerters, if: devise_controller?

  private
  def configure_permitted_paramerters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :birthday])
  end
end
