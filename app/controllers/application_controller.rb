class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_admin!
  before_action :configure_permitted_parameters, if:  :devise_controller?

  def resource_name
    :admin
  end

  def resource
    @admin ||= Admin.new
  end
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:admin]
  end

  protected
  def configure_permitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :account, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:login, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :account, :email, :password_confirmation, :current_password) }
  end
end
