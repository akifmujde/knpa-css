class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if:  :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:university_id,:unv_fac_id, :fac_dep_id, :name, :surname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:university_id,:unv_fac_id, :fac_dep_id, :name, :surname])
  end
end
