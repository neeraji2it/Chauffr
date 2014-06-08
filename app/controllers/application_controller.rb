class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation) }
  end
  
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource_or_scope)
    profiles_path
  end

  def after_sign_up_path_for(resource_or_scope)
    root_path
  end

#  def is_login?
#    unless current_user
#      flash[:error] = "Please login"
#      redirect_to '/'
#    end
#  end
end