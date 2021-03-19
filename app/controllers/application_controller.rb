class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:last_name, :first_name, :ruby_last_name, :ruby_first_name, :postal_code, :address, :phone_number])
  end

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admins_order_index_path
    when Customer
      root_path
    end
  end

  # def after_sign_out_path_for(resource)
  #   case resource
  #   when Admin
  #     new_admin_session_path
  #   end
  # end

end
