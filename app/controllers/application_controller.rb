class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:family_name, :given_name, :ruby_family_name, :ruby_given_name, :postal_code, :address, :tel])
  end
  
end
