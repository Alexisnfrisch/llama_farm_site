class ApplicationController < ActionController::Base
before_action :authenticate_user!



protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :bio, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :bio, :avatar])
  end

end
